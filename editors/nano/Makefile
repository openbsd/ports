# $OpenBSD: Makefile,v 1.83 2016/09/03 11:27:34 naddy Exp $

COMMENT=	Pico editor clone with enhancements

DISTNAME=	nano-2.7.0
CATEGORIES=	editors
HOMEPAGE=	https://www.nano-editor.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	https://www.nano-editor.org/dist/v2.7/ \
		${MASTER_SITE_GNU:=nano/}
EXTRACT_SUFX=	.tar.xz

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=	devel/gettext
WANTLIB=	c iconv intl ncursesw

CONFIGURE_STYLE=gnu
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
