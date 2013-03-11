# $OpenBSD: Makefile,v 1.19 2013/03/11 11:35:50 espie Exp $

COMMENT=	ident daemon with custom responses and NAT support
DISTNAME=	oidentd-2.0.7
REVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	http://ojnk.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

pre-configure:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' \
		${WRKSRC}/doc/oidentd_masq.conf.5 ${WRKSRC}/doc/oidentd.8 \
		${WRKSRC}/doc/oidentd.conf.5 ${WRKSRC}/src/oidentd_options.c \
		${WRKSRC}/src/oidentd.h

.include <bsd.port.mk>
