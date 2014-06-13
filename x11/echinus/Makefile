# $OpenBSD: Makefile,v 1.5 2014/06/13 19:24:26 gonzalo Exp $

COMMENT=		simple, lightweight tiling and floating window manager

DISTNAME=		echinus-0.4.9

CATEGORIES=		x11

HOMEPAGE=		http://plhk.ru/

MAINTAINER=		Alexander Polakov <polachok@gmail.com>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xft Xrandr c

MASTER_SITES=		${HOMEPAGE}/static/echinus/

MAKE_ENV=		BINPREFIX="${LOCALBASE}/bin" \
			MANPREFIX="${LOCALBASE}/man" \
			DOCPREFIX="${LOCALBASE}/share/doc" \
			CONFPREFIX="${LOCALBASE}/share/examples" \
			CONF="${SYSCONFDIR}/xdg/echinus" \
			CLFAGS_EXTRA="${CFLAGS}" \
			CC="${CC}"

NO_TEST=		Yes

post-extract:
	@chmod 644 ${WRKSRC}/{max.xbm,iconify.xbm,close.xbm,echinusrc}

.include <bsd.port.mk>
