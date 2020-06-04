# $OpenBSD: Makefile,v 1.114 2020/06/04 19:43:35 naddy Exp $

COMMENT=	simple editor, inspired by Pico

DISTNAME=	nano-4.9.3
CATEGORIES=	editors
HOMEPAGE=	https://www.nano-editor.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	https://www.nano-editor.org/dist/v4/ \
		${MASTER_SITE_GNU:=nano/}
PORTROACH=	site:https://www.nano-editor.org/dist/latest/
EXTRACT_SUFX=	.tar.xz

# GPLv3+
PERMIT_PACKAGE=	Yes

LIB_DEPENDS=	devel/gettext,-runtime
WANTLIB=	c curses iconv intl

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-libmagic
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# configure tests for groff -Thtml, but assumes the existence of groff
pre-configure:
	@ln -s /usr/bin/false ${WRKDIR}/bin/groff

post-install:
	sed -i -e 's:/etc:${SYSCONFDIR}:g;' ${PREFIX}/man/man5/nanorc.5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nano
	${INSTALL_DATA} ${WRKBUILD}/doc/sample.nanorc \
	    ${PREFIX}/share/examples/nano

.include <bsd.port.mk>
