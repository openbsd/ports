# $OpenBSD: Makefile,v 1.4 2010/09/22 18:24:10 stsp Exp $

LANGS = 	af am bg ca cs cy da de el eo es fo fr ga gd gl he hr hu \
		id it ku la lt lv mg mi ms nb nl nn ny pl pt ro ru rw sk \
		sl sv sw tet tl tn uk yi zu

FLAVOR ?= 	af

HOMEPAGE = 	http://www.vim.org/
VERSION = 	7.3
P = 		${VERSION:C/[\.]//g}
CATEGORIES = 	editors
MASTER_SITES = 	ftp://ftp.vim.org/pub/vim/runtime/spell/
DIST_SUBDIR = 	vim-spell
EXTRACT_ONLY = 
DISTNAME = 	vim-spell-${VERSION}

# GPLv2+, LGPL, GFDL
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP = 	Yes

.  if ${FLAVOR:L:Maf}
LANG_NAME = 	Afrikaans
DISTFILES = 	af.latin1.spl af.utf-8.spl
.  elif ${FLAVOR:L:Mam}
LANG_NAME = 	Amharic
DISTFILES = 	am.utf-8.spl
.  elif ${FLAVOR:L:Mbg}
LANG_NAME = 	Bulgarian
DISTFILES = 	bg.cp1251.spl bg.utf-8.spl
.  elif ${FLAVOR:L:Mca}
LANG_NAME = 	Catalan
DISTFILES = 	ca.latin1.spl ca.utf-8.spl
.  elif ${FLAVOR:L:Mcs}
LANG_NAME = 	Czech
DISTFILES = 	cs.cp1250.spl cs.iso-8859-2.spl cs.utf-8.spl
.  elif ${FLAVOR:L:Mcy}
LANG_NAME = 	Welsh
DISTFILES = 	cy.iso-8859-14.spl cy.utf-8.spl
.  elif ${FLAVOR:L:Mda}
LANG_NAME = 	Danish
DISTFILES = 	da.latin1.spl da.utf-8.spl
.  elif ${FLAVOR:L:Mde}
LANG_NAME = 	German
DISTFILES = 	de.latin1.spl de.utf-8.spl
.  elif ${FLAVOR:L:Mel}
LANG_NAME = 	Greek
DISTFILES = 	el.iso-8859-7.spl el.utf-8.spl
.  elif ${FLAVOR:L:Meo}
LANG_NAME = 	Esperanto
DISTFILES = 	eo.iso-8859-3.spl eo.utf-8.spl
.  elif ${FLAVOR:L:Mes}
LANG_NAME = 	Spanish
DISTFILES = 	es.latin1.spl es.utf-8.spl
.  elif ${FLAVOR:L:Mfo}
LANG_NAME = 	Faroese
DISTFILES = 	fo.latin1.spl fo.utf-8.spl
.  elif ${FLAVOR:L:Mfr}
LANG_NAME = 	French
DISTFILES = 	fr.latin1.spl fr.utf-8.spl
.  elif ${FLAVOR:L:Mga}
LANG_NAME = 	Irish
DISTFILES = 	ga.latin1.spl ga.utf-8.spl
.  elif ${FLAVOR:L:Mgd}
LANG_NAME = 	Scottish Gaelic 
DISTFILES = 	gd.latin1.spl gd.utf-8.spl
.  elif ${FLAVOR:L:Mgl}
LANG_NAME = 	Galician 
DISTFILES = 	gl.latin1.spl gl.utf-8.spl
.  elif ${FLAVOR:L:Mhe}
LANG_NAME = 	Hebrew 
DISTFILES = 	he.iso-8859-8.spl he.utf-8.spl
.  elif ${FLAVOR:L:Mhr}
LANG_NAME = 	Croation 
DISTFILES = 	hr.cp1250.spl hr.iso-8859-2.spl hr.utf-8.spl
.  elif ${FLAVOR:L:Mhu}
LANG_NAME = 	Hungarian 
DISTFILES = 	hu.cp1250.spl hu.iso-8859-2.spl hu.utf-8.spl
.  elif ${FLAVOR:L:Mid}
LANG_NAME = 	Indonesian 
DISTFILES = 	id.latin1.spl id.utf-8.spl
.  elif ${FLAVOR:L:Mit}
LANG_NAME = 	Italian
DISTFILES = 	it.latin1.spl it.utf-8.spl
.  elif ${FLAVOR:L:Mku}
LANG_NAME = 	Kurdish
DISTFILES = 	ku.iso-8859-9.spl ku.utf-8.spl
.  elif ${FLAVOR:L:Mla}
LANG_NAME = 	Latin
DISTFILES = 	la.latin1.spl la.utf-8.spl
.  elif ${FLAVOR:L:Mlt}
LANG_NAME = 	Lithuanian 
DISTFILES = 	lt.iso-8859-13.spl lt.utf-8.spl
.  elif ${FLAVOR:L:Mlv}
LANG_NAME = 	Latvian 
DISTFILES = 	lv.iso-8859-13.spl lv.utf-8.spl
.  elif ${FLAVOR:L:Mmg}
LANG_NAME = 	Malagasy
DISTFILES = 	mg.latin1.spl mg.utf-8.spl
.  elif ${FLAVOR:L:Mmi}
LANG_NAME = 	Maori 
DISTFILES = 	mi.iso-8859-4.spl mi.utf-8.spl
.  elif ${FLAVOR:L:Mms}
LANG_NAME = 	Malay 
DISTFILES = 	ms.latin1.spl ms.utf-8.spl
.  elif ${FLAVOR:L:Mnb}
LANG_NAME = 	Norwegian (Bokmal)
DISTFILES = 	nb.latin1.spl nb.utf-8.spl
.  elif ${FLAVOR:L:Mnl}
LANG_NAME = 	Dutch 
DISTFILES = 	nl.latin1.spl nl.utf-8.spl
.  elif ${FLAVOR:L:Mnn}
LANG_NAME = 	Norwegian (Nynorsk)
DISTFILES = 	nn.latin1.spl nn.utf-8.spl
.  elif ${FLAVOR:L:Mny}
LANG_NAME = 	Chichewa
DISTFILES = 	ny.ascii.spl ny.iso-8859-14.spl ny.utf-8.spl
.  elif ${FLAVOR:L:Mpl}
LANG_NAME = 	Polish
DISTFILES = 	pl.cp1250.spl pl.iso-8859-2.spl pl.utf-8.spl
.  elif ${FLAVOR:L:Mpt}
LANG_NAME = 	Portuguese 
DISTFILES = 	pt.latin1.spl pt.utf-8.spl
.  elif ${FLAVOR:L:Mro}
LANG_NAME = 	Romanian 
DISTFILES = 	ro.cp1250.spl ro.iso-8859-2.spl ro.utf-8.spl
.  elif ${FLAVOR:L:Mru}
LANG_NAME = 	Russian 
DISTFILES = 	ru.cp1251.spl ru.koi8-r.spl ru.utf-8.spl
.  elif ${FLAVOR:L:Mrw}
LANG_NAME = 	Kinyarwanda 
DISTFILES = 	rw.latin1.spl rw.utf-8.spl
.  elif ${FLAVOR:L:Msk}
LANG_NAME = 	Slovak 
DISTFILES = 	sk.cp1250.spl sk.iso-8859-2.spl sk.utf-8.spl
.  elif ${FLAVOR:L:Msl}
LANG_NAME = 	Slovenian 
DISTFILES = 	sl.cp1250.spl sl.iso-8859-2.spl sl.utf-8.spl
.  elif ${FLAVOR:L:Msv}
LANG_NAME = 	Swedish 
DISTFILES = 	sv.latin1.spl sv.utf-8.spl
.  elif ${FLAVOR:L:Msw}
LANG_NAME = 	Kiswahili 
DISTFILES = 	sw.latin1.spl sw.utf-8.spl
.  elif ${FLAVOR:L:Mtet}
LANG_NAME = 	Tetum
DISTFILES = 	tet.latin1.spl tet.utf-8.spl
.  elif ${FLAVOR:L:Mtl}
LANG_NAME = 	Tagalog
DISTFILES = 	tl.latin1.spl tl.utf-8.spl
.  elif ${FLAVOR:L:Mtn}
LANG_NAME = 	Setswana 
DISTFILES = 	tn.cp1250.spl tn.iso-8859-2.spl tn.utf-8.spl
.  elif ${FLAVOR:L:Muk}
LANG_NAME = 	Ukrainian 
DISTFILES = 	uk.koi8-u.spl uk.utf-8.spl
.  elif ${FLAVOR:L:Myi}
LANG_NAME = 	Yiddish 	
DISTFILES = 	yi-tr.utf-8.spl yi.latin1.spl yi.utf-8.spl
.  elif ${FLAVOR:L:Mzu}
LANG_NAME = 	Zulu 
DISTFILES = 	zu.ascii.spl zu.latin1.spl zu.utf-8.spl
.  endif

SUPDISTFILES = 	af.latin1.spl af.utf-8.spl am.utf-8.spl bg.cp1251.spl \
		bg.utf-8.spl ca.latin1.spl ca.utf-8.spl cs.cp1250.spl \
		cs.iso-8859-2.spl cs.utf-8.spl cy.iso-8859-14.spl \
		cy.utf-8.spl da.latin1.spl da.utf-8.spl de.latin1.spl \
		de.utf-8.spl el.iso-8859-7.spl el.utf-8.spl en.ascii.spl \
		en.latin1.spl en.utf-8.spl eo.iso-8859-3.spl eo.utf-8.spl \
		es.latin1.spl es.utf-8.spl fo.latin1.spl fo.utf-8.spl \
		fr.latin1.spl fr.utf-8.spl ga.latin1.spl ga.utf-8.spl \
		gd.latin1.spl gd.utf-8.spl gl.latin1.spl gl.utf-8.spl \
		he.iso-8859-8.spl he.utf-8.spl hr.cp1250.spl \
		hr.iso-8859-2.spl hr.utf-8.spl hu.cp1250.spl \
		hu.iso-8859-2.spl hu.utf-8.spl id.latin1.spl id.utf-8.spl \
		it.latin1.spl it.utf-8.spl ku.iso-8859-9.spl ku.utf-8.spl \
		la.latin1.spl la.utf-8.spl lt.iso-8859-13.spl lt.utf-8.spl \
		lv.iso-8859-13.spl lv.utf-8.spl mg.latin1.spl mg.utf-8.spl \
		mi.iso-8859-4.spl mi.utf-8.spl ms.latin1.spl ms.utf-8.spl \
		nb.latin1.spl nb.utf-8.spl nl.latin1.spl nl.utf-8.spl \
		nn.latin1.spl nn.utf-8.spl ny.ascii.spl ny.iso-8859-14.spl \
		ny.utf-8.spl pl.cp1250.spl pl.iso-8859-2.spl pl.utf-8.spl \
		pt.latin1.spl pt.utf-8.spl ro.cp1250.spl ro.iso-8859-2.spl \
		ro.utf-8.spl ru.cp1251.spl ru.koi8-r.spl ru.utf-8.spl \
		rw.latin1.spl rw.utf-8.spl sk.cp1250.spl sk.iso-8859-2.spl \
		sk.utf-8.spl sl.cp1250.spl sl.iso-8859-2.spl sl.utf-8.spl \
		sv.latin1.spl sv.utf-8.spl sw.latin1.spl sw.utf-8.spl \
		tet.latin1.spl tet.utf-8.spl tl.latin1.spl tl.utf-8.spl \
		tn.cp1250.spl tn.iso-8859-2.spl tn.utf-8.spl uk.koi8-u.spl \
		uk.utf-8.spl yi-tr.utf-8.spl yi.latin1.spl yi.utf-8.spl \
		zu.ascii.spl zu.latin1.spl zu.utf-8.spl

.for l in ${LANGS}
FLAVORS += 	$l
.  if ${FLAVOR:L:M${l}}
FULLPKGNAME = 	vim-spell-$l-${VERSION}
COMMENT = 	${LANG_NAME} spell-check files for Vim
PLIST = 	${PKGDIR}/PLIST-$l
.  endif
.endfor

NO_BUILD = 	Yes
RUN_DEPENDS = 	::editors/vim

SUBST_VARS = 	LANG_NAME P

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vim${P}/spell
.for f in ${DISTFILES}
	${INSTALL_DATA} ${FULLDISTDIR}/${f} ${PREFIX}/share/vim/vim${P}/spell
.endfor

.include <bsd.port.mk>
