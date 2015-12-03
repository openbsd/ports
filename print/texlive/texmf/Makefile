# $OpenBSD: Makefile,v 1.44 2015/12/03 21:24:31 sthen Exp $

COMMENT-context =	texlive texmf for conTeXt
COMMENT-docs =		texlive documentation
COMMENT-full =		texlive texmf for extra macros
COMMENT-main =		texlive texmf for basic functionality
COMMENT-buildset =	smallest texlive texmf for building ports

# If you move things out of another texmf into the buildset, don't forget to:
#   * Update the buildset conflict markers in PLIST-buildset.
#   * Add a more restrictive RUN_DEPEND upon the buildset.

DISTNAME =		texlive-${DIST_V}-texmf
MASTER_SITES0 =		https://spacehopper.org/mirrors/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texlive-${DIST_V}-extra${EXTRACT_SUFX} \
			texmf-var-pregen-${V}${EXTRACT_SUFX}:0

PKGNAME-main =		texlive_texmf-minimal-${V}
PKGNAME-full =		texlive_texmf-full-${V}
PKGNAME-docs =		texlive_texmf-docs-${V}
PKGNAME-context =	texlive_texmf-context-${V}
PKGNAME-buildset =	texlive_texmf-buildset-${V}

REVISION-main =		0
REVISION-full =		0
REVISION-buildset =	0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		archivers/xz

# We dont use auto module deps for these, as MODULES is not per SUBPACKAGE
.include "adj.mk"
MODULES +=		lang/ruby lang/python
MODRUBY_REV =		1.8
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

RUN_DEPENDS-main +=	texlive_base-${V}:print/texlive/base \
			texlive_texmf-buildset-${V}p0:print/texlive/texmf,-buildset

RUN_DEPENDS-full =	texlive_texmf-minimal-${V}:print/texlive/texmf,-main \
			${MODPY_RUN_DEPENDS} \
			${_MODLUA_RUNDEPENDS}
RUN_DEPENDS-context +=	texlive_texmf-full-${V}:print/texlive/texmf,-full \
			${MODRUBY_RUNDEPENDS}
RUN_DEPENDS-docs +=	texlive_base-${V}:print/texlive/base \
			x11/p5-Tk

MULTI_PACKAGES =	-context -docs -full -main -buildset

MODULES +=		lang/lua lang/ruby lang/python x11/tk perl
MODLUA_RUNDEP =		No
MODLUA_BUILDDEP =	No
MODRUBY_REV =		1.8
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

SUBST_VARS +=		RUBY

# Substitute correct interpreter paths into scripts.
# Some are done automatically by MODULES
pre-configure:
	@# Don't use builtin ruby.port.mk substitution. It uses
	@# find, which takes an age on such a large directory.
	for F in ${RUBY_ADJ_FILES}; do \
	    perl -pi -e '($$. == 1) && s@^.*$$@#!${RUBY}@' ${WRKSRC}/$$F; \
	done
	for F in ${WISH_ADJ_FILES}; do \
	    ${MODTCL_WISH_ADJ} ${WRKSRC}/$$F; \
	done
	for F in ${TEXLUA_ADJ_FILES}; do \
	    perl -pi -e '($$. == 1) && s@^.*$$@#!${PREFIX}/bin/texlua@' \
	    ${WRKSRC}/$$F; \
	done
	for F in ${LUA_ADJ_FILES}; do \
	    perl -pi -e '($$. == 1) && s@^.*$$@#!${MODLUA_BIN}@' ${WRKSRC}/$$F; \
	done
	for F in ${BASH_ADJ_FILES}; do \
	    perl -pi -e '($$. == 1) && s@^.*$$@#!${LOCALBASE}/bin/bash@' \
	    ${WRKSRC}/$$F; \
	done
	${SUBST_CMD} ${WRKSRC}/texmf-dist/scripts/context/stubs/unix/mtxrun

do-install:
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share

	# plug in my pregenerated map and formats
	mv ${WRKDIR}/texmf-var ${PREFIX}/share

	# Put manuals in the right place.
	#
	# The rest of share/texmf-dist/doc/man does not appear
	# in the packing list, so the PDF versions will not be installed.
	#
	# I am told by upstream that any manual page not under
	# texmf-dist/doc/man is intentionally this way and should not be
	# moved into the system manual path. So be it.
	mv ${PREFIX}/share/texmf-dist/doc/man/man1/*.1 ${PREFIX}/man/man1/
	mv ${PREFIX}/share/texmf-dist/doc/man/man5/*.5 ${PREFIX}/man/man5/

	# Info pages
	mv ${PREFIX}/share/texmf-dist/doc/info/*.info \
		${PREFIX}/info/

	# adjust permissions
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/{share/texmf*,man/man*/*,info/*}

# selfauto does not work with our legacy texmf paths, patch in paths.
post-install:
	${SUBST_CMD} ${PREFIX}/share/texmf-dist/web2c/texmf.cnf
	${SUBST_CMD} ${PREFIX}/share/texmf-dist/web2c/texmfcnf.lua

# Generating PLISTs is special for texlive.
# This target requires py-texscythe.
update-plist: plist
plist:
	cd ${FILESDIR} && ${LOCALBASE}/bin/texscyther --initdb \
		-t ${LOCALBASE}//share/examples/py-texscythe/texlive2014.tlpdb.gz && \
		${MODPY_BIN} mk_plists.py

.include <bsd.port.mk>
