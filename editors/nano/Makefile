# $OpenBSD: Makefile,v 1.71 2013/03/11 11:02:50 espie Exp $

COMMENT=	Pico editor clone with enhancements

DISTNAME=	nano-2.2.6
CATEGORIES=	editors
HOMEPAGE=	http://www.nano-editor.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	http://www.nano-editor.org/dist/v2.2/ \
		${MASTER_SITE_GNU:=nano/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext
WANTLIB=	c ncursesw

# required to build HTML version of man pages
BUILD_DEPENDS=	textproc/groff>=1.21

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	perl -i -pe 's:SYSCONFDIR:${SYSCONFDIR}:g;' \
	    -e  's:PREFIX:${TRUEPREFIX}:g;' \
	    ${PREFIX}/man/man1/nano.1 \
	    ${PREFIX}/man/man5/nanorc.5 \
	    ${PREFIX}/info/nano.info
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nano
	${INSTALL_DATA} ${WRKBUILD}/doc/nanorc.sample \
	    ${PREFIX}/share/examples/nano

# convenience target for maintainer to regen the syntax highlighting patches
nanorc-patches: extract
	cd ${WRKSRC}/doc/syntax; \
	    for i in *.nanorc; do \
		mv $$i $$i.orig; \
		sed -e 's/\\</[[:<:]]/g' -e 's/\\>/[[:>:]]/g' $$i.orig >$$i; \
		cmp $$i.orig $$i && mv $$i.orig $$i; \
	    done

.include <bsd.port.mk>
