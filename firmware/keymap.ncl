let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in
let util = import "fak/util_functions.ncl" in

let TTTT = tap.trans & hold.trans in
let kc = tap.reg.kc in
let ks = tap.reg.ks in
let md = hold.reg.mod in
let MO = hold.reg.layer in

let cu = {
	SFTZ = td.make 100 [
		md.lsft & kc.Z & hold.reg.behavior {},
		tap.reg.mod.lsft & kc.Z,
	],
	SFTA = td.make 100 [
		md.lsft & kc.A & hold.reg.behavior {},
		tap.reg.mod.lsft & kc.A,
	],
	CTLX = td.make 100 [
		md.lctl & kc.X & hold.reg.behavior {},
		tap.reg.mod.lctl & kc.X,
	],
	GUIC = td.make 100 [
		md.lgui & kc.C & hold.reg.behavior {},
		tap.reg.mod.lgui & kc.C,
	],
	TH_DN = MO 1 & kc.SPC & hold.reg.behavior {},
	TH_UP = MO 2 & kc.BSPC & hold.reg.behavior {},
	TH_FN = MO 3 & kc.B & hold.reg.behavior {},
} in

{
	layers = [
		[
			kc.Q, kc.W, kc.E, kc.R, kc.T, kc.Y, kc.U, kc.I, kc.O, kc.P,
			cu.SFTA, kc.S, kc.D, kc.F, kc.G, kc.H, kc.J, kc.K, kc.L, kc.SCLN,
			cu.SFTZ, cu.CTLX, cu.GUIC, kc.V, cu.TH_DN, cu.TH_UP, cu.TH_FN, kc.N, kc.M, kc.SLSH,
		],
		[
			kc.N1, kc.N2, kc.N3, kc.N4, kc.N5, kc.N6, kc.N7, kc.N8, kc.N9, kc.N0,
			kc.GRV, TTTT, kc.QUOT, kc.BSLS, kc.MINS, kc.EQL, kc.LBRC, kc.RBRC, TTTT, TTTT,
			TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, kc.COMM, kc.DOT,
		],
		[
			ks.EXLM, ks.AT, ks.HASH, ks.DLR, ks.PERC, ks.CIRC, ks.AMPR, ks.ASTR, ks.LPRN, ks.RPRN,
			ks.TILD, TTTT, ks.DQUO, ks.PIPE, ks.UNDS, ks.PLUS, ks.LCBR, ks.RCBR, TTTT, TTTT,
			TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, ks.LABK, ks.RABK,
		],
		[
			kc.ESC, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT, kc.DEL, kc.ENTER,
			kc.TAB, TTTT, TTTT, TTTT, TTTT, kc.LEFT, kc.DOWN, kc.UP, kc.RIGHT, TTTT,
			kc.HOME, kc.PGDN, kc.PGUP, kc.END, TTTT, TTTT, TTTT, TTTT, TTTT, TTTT,
		],
	]
}
