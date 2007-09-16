# $OpenBSD: Makefile,v 1.9 2007/09/16 00:17:04 merdely Exp $

COMMENT=	SMTP virus filter

DISTNAME=	clamsmtp-1.8
PKGNAME=	${DISTNAME}p1
CATEGORIES=    	mail

HOMEPAGE=	http://memberwebs.com/nielsen/software/clamsmtp/

MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

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
