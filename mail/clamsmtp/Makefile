# $OpenBSD: Makefile,v 1.5 2005/11/03 18:43:01 naddy Exp $

COMMENT=	"SMTP virus filter"

DISTNAME=	clamsmtp-1.6
CATEGORIES=    	mail

HOMEPAGE=	http://memberwebs.com/nielsen/software/clamsmtp/

MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Simon Dassow <janus@errornet.de>

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
