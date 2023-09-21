LANGS =		af am bg ca cs cy da de el eo es fo fr ga gd gl he hr hu \
		id it ku la lt lv mg mi ms nb nl nn ny pl pt ro ru rw sk \
		sl sv sw tet tl tn uk yi zu

HOMEPAGE =	https://www.vim.org/
VERSION =	9.0
P =		${VERSION:C/[\.]//g}
CATEGORIES =	editors
SITES =		http://ftp.vim.org/pub/vim/runtime/spell/ \
		ftp://ftp.vim.org/pub/vim/runtime/spell/
DIST_SUBDIR =	vim-spell-${VERSION}
EXTRACT_ONLY =
DISTNAME =	vim-spell-${VERSION}

# GPLv2+, LGPL, GFDL
PERMIT_PACKAGE =	Yes

LANG_NAME-af =	Afrikaans
LANGFILES-af =	af.latin1.spl af.utf-8.spl

LANG_NAME-am =	Amharic
LANGFILES-am =	am.utf-8.spl

LANG_NAME-bg =	Bulgarian
LANGFILES-bg =	bg.cp1251.spl bg.utf-8.spl

LANG_NAME-ca =	Catalan
LANGFILES-ca =	ca.latin1.spl ca.utf-8.spl

LANG_NAME-cs =	Czech
LANGFILES-cs =	cs.cp1250.spl cs.iso-8859-2.spl cs.utf-8.spl

LANG_NAME-cy =	Welsh
LANGFILES-cy =	cy.iso-8859-14.spl cy.utf-8.spl

LANG_NAME-da =	Danish
LANGFILES-da =	da.latin1.spl da.utf-8.spl

LANG_NAME-de =	German
LANGFILES-de =	de.latin1.spl de.utf-8.spl

LANG_NAME-el =	Greek
LANGFILES-el =	el.iso-8859-7.spl el.utf-8.spl

LANG_NAME-eo =	Esperanto
LANGFILES-eo =	eo.iso-8859-3.spl eo.utf-8.spl

LANG_NAME-es =	Spanish
LANGFILES-es =	es.latin1.spl es.utf-8.spl

LANG_NAME-fo =	Faroese
LANGFILES-fo =	fo.latin1.spl fo.utf-8.spl

LANG_NAME-fr =	French
LANGFILES-fr =	fr.latin1.spl fr.utf-8.spl

LANG_NAME-ga =	Irish
LANGFILES-ga =	ga.latin1.spl ga.utf-8.spl

LANG_NAME-gd =	Scottish Gaelic
LANGFILES-gd =	gd.latin1.spl gd.utf-8.spl

LANG_NAME-gl =	Galician
LANGFILES-gl =	gl.latin1.spl gl.utf-8.spl

LANG_NAME-he =	Hebrew
LANGFILES-he =	he.iso-8859-8.spl he.utf-8.spl

LANG_NAME-hr =	Croation
LANGFILES-hr =	hr.cp1250.spl hr.iso-8859-2.spl hr.utf-8.spl

LANG_NAME-hu =	Hungarian
LANGFILES-hu =	hu.cp1250.spl hu.iso-8859-2.spl hu.utf-8.spl

LANG_NAME-id =	Indonesian
LANGFILES-id =	id.latin1.spl id.utf-8.spl

LANG_NAME-it =	Italian
LANGFILES-it =	it.latin1.spl it.utf-8.spl

LANG_NAME-ku =	Kurdish
LANGFILES-ku =	ku.iso-8859-9.spl ku.utf-8.spl

LANG_NAME-la =	Latin
LANGFILES-la =	la.latin1.spl la.utf-8.spl

LANG_NAME-lt =	Lithuanian
LANGFILES-lt =	lt.iso-8859-13.spl lt.utf-8.spl

LANG_NAME-lv =	Latvian
LANGFILES-lv =	lv.iso-8859-13.spl lv.utf-8.spl

LANG_NAME-mg =	Malagasy
LANGFILES-mg =	mg.latin1.spl mg.utf-8.spl

LANG_NAME-mi =	Maori
LANGFILES-mi =	mi.iso-8859-4.spl mi.utf-8.spl

LANG_NAME-ms =	Malay
LANGFILES-ms =	ms.latin1.spl ms.utf-8.spl

LANG_NAME-nb =	Norwegian (Bokmal)
LANGFILES-nb =	nb.latin1.spl nb.utf-8.spl

LANG_NAME-nl =	Dutch
LANGFILES-nl =	nl.latin1.spl nl.utf-8.spl

LANG_NAME-nn =	Norwegian (Nynorsk)
LANGFILES-nn =	nn.latin1.spl nn.utf-8.spl

LANG_NAME-ny =	Chichewa
LANGFILES-ny =	ny.ascii.spl ny.iso-8859-14.spl ny.utf-8.spl

LANG_NAME-pl =	Polish
LANGFILES-pl =	pl.cp1250.spl pl.iso-8859-2.spl pl.utf-8.spl

LANG_NAME-pt =	Portuguese
LANGFILES-pt =	pt.latin1.spl pt.utf-8.spl

LANG_NAME-ro =	Romanian
LANGFILES-ro =	ro.cp1250.spl ro.iso-8859-2.spl ro.utf-8.spl

LANG_NAME-ru =	Russian
LANGFILES-ru =	ru.cp1251.spl ru.koi8-r.spl ru.utf-8.spl

LANG_NAME-rw =	Kinyarwanda
LANGFILES-rw =	rw.latin1.spl rw.utf-8.spl

LANG_NAME-sk =	Slovak
LANGFILES-sk =	sk.cp1250.spl sk.iso-8859-2.spl sk.utf-8.spl

LANG_NAME-sl =	Slovenian
LANGFILES-sl =	sl.cp1250.spl sl.iso-8859-2.spl sl.utf-8.spl

LANG_NAME-sv =	Swedish
LANGFILES-sv =	sv.latin1.spl sv.utf-8.spl

LANG_NAME-sw =	Kiswahili
LANGFILES-sw =	sw.latin1.spl sw.utf-8.spl

LANG_NAME-tet =	Tetum
LANGFILES-tet =	tet.latin1.spl tet.utf-8.spl

LANG_NAME-tl =	Tagalog
LANGFILES-tl =	tl.latin1.spl tl.utf-8.spl

LANG_NAME-tn =	Setswana
LANGFILES-tn =	tn.cp1250.spl tn.iso-8859-2.spl tn.utf-8.spl

LANG_NAME-uk =	Ukrainian
LANGFILES-uk =	uk.koi8-u.spl uk.utf-8.spl

LANG_NAME-yi =	Yiddish
LANGFILES-yi =	yi-tr.utf-8.spl yi.latin1.spl yi.utf-8.spl

LANG_NAME-zu =	Zulu
LANGFILES-zu =	zu.ascii.spl zu.latin1.spl zu.utf-8.spl

.for i in ${LANGS}
SUPDISTFILES += ${LANGFILES-$i}
.endfor

DISTFILES = ${LANGFILES-$L}
LANG_NAME = ${LANG_NAME-$L}

DISTNAME =	vim-spell-$L-${VERSION}
COMMENT =	${LANG_NAME} spell-check files for Vim
PKGDIR =	${.CURDIR}/../pkg
PLIST =	${PKGDIR}/PLIST-$L
CHECKSUM_FILE =	${.CURDIR}/../distinfo

# no RUN_DEPENDS on vim; the way that flavours are setup there,
# doing so would force a particular UI flavour to be installed by
# default
NO_BUILD =	Yes

SUBST_VARS =	LANG_NAME P

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vim${P}/spell
.for f in ${DISTFILES}
	${INSTALL_DATA} ${FULLDISTDIR}/${f} ${PREFIX}/share/vim/vim${P}/spell
.endfor
