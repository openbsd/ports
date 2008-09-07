# $OpenBSD: Makefile,v 1.10 2008/09/07 09:58:14 simon Exp $

COMMENT=	SMTP virus filter

DISTNAME=	clamsmtp-1.10
CATEGORIES=    	mail

HOMEPAGE=	http://memberwebs.com/stef/software/clamsmtp/

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	::security/clamav

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pthread

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/clamsmtp
	${INSTALL_DATA} ${WRKSRC}/doc/clamsmtpd.conf \
	    ${PREFIX}/share/examples/clamsmtp

.include <bsd.port.mk>
