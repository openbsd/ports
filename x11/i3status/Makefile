# $OpenBSD: Makefile,v 1.32 2014/03/09 20:03:43 jasper Exp $

ONLY_FOR_ARCHS=		${APM_ARCHS}

COMMENT=		generate a statusbar for use with i3/xmobar/dzen2

DISTNAME=		i3status-2.8
REVISION=		0
CATEGORIES=		x11 sysutils

HOMEPAGE=		http://i3wm.org/i3status/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

WANTLIB += c confuse ossaudio yajl

USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/asciidoc>=8.6.8
LIB_DEPENDS=		devel/libconfuse \
			devel/libyajl

NO_TEST=		Yes

# XXX: Optimizing results in seg. faults on at least amd64.
CFLAGS+=		-O0

MAKE_ENV+=		V=1 SYSCONFDIR=${PREFIX}/share/examples/i3status/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/i3status ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/i3status
	${INSTALL_DATA} ${WRKSRC}/i3status.conf \
		${PREFIX}/share/examples/i3status/
	${INSTALL_MAN} ${WRKSRC}/man/i3status.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
