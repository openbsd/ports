COMMENT=	ident daemon with custom responses and NAT support
DISTNAME=	oidentd-2.0.8
REVISION=	2
CATEGORIES=	net
SITES=		${SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	https://ojnk.sourceforge.net/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=		c

CONFIGURE_STYLE=gnu

pre-configure:
	sed -i 's,/etc,${SYSCONFDIR},g' \
		${WRKSRC}/doc/oidentd_masq.conf.5 ${WRKSRC}/doc/oidentd.8 \
		${WRKSRC}/doc/oidentd.conf.5 ${WRKSRC}/src/oidentd_options.c \
		${WRKSRC}/src/oidentd.h

.include <bsd.port.mk>
