# $OpenBSD: Makefile,v 1.15 2019/07/12 20:47:25 sthen Exp $

COMMENT=	SMTP virus filter

DISTNAME=	clamsmtp-1.10
CATEGORIES=    	mail

HOMEPAGE=	http://memberwebs.com/stef/software/clamsmtp/

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	security/clamav

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=		c pthread

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/clamsmtp
	${INSTALL_DATA} ${WRKSRC}/doc/clamsmtpd.conf \
	    ${PREFIX}/share/examples/clamsmtp

.include <bsd.port.mk>
