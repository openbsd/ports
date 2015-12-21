# $OpenBSD: Makefile,v 1.78 2015/12/21 20:58:57 naddy Exp $

COMMENT=	Pico editor clone with enhancements

DISTNAME=	nano-2.4.3
CATEGORIES=	editors
HOMEPAGE=	http://www.nano-editor.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	http://www.nano-editor.org/dist/v2.4/ \
		${MASTER_SITE_GNU:=nano/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext
WANTLIB=	c ncursesw

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	--disable-libmagic
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# configure tests for groff -Thtml, but assumes the existence of groff
pre-configure:
	@ln -s /usr/bin/false ${WRKDIR}/bin/groff

post-install:
	sed -i -e 's:/etc:${SYSCONFDIR}:g;' -e 's:PREFIX:${TRUEPREFIX}:g;' \
	    ${PREFIX}/man/man5/nanorc.5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nano
	${INSTALL_DATA} ${WRKBUILD}/doc/nanorc.sample \
	    ${PREFIX}/share/examples/nano

.include <bsd.port.mk>
