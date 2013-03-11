# $OpenBSD: Makefile,v 1.13 2013/03/11 11:23:50 espie Exp $

COMMENT=	SMTP virus filter

DISTNAME=	clamsmtp-1.10
CATEGORIES=    	mail

HOMEPAGE=	http://memberwebs.com/stef/software/clamsmtp/

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	security/clamav

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pthread

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/clamsmtp
	${INSTALL_DATA} ${WRKSRC}/doc/clamsmtpd.conf \
	    ${PREFIX}/share/examples/clamsmtp

.include <bsd.port.mk>
