# $OpenBSD: Makefile,v 1.4 2000/10/22 17:02:41 espie Exp $
DISTNAME=	sftp-0.8.1
CATEGORIES=	net security
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftp.xbill.org/pub/sftp/
HOMEPAGE=	http://www.xbill.org/sftp/

MAINTAINER=	Markus Friedl <markus@openbsd.org>

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SFTPDOCDIR=		${PREFIX}/share/doc/sftp

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LIBS="-ltermcap"

post-install:
	@${INSTALL_DATA_DIR} ${SFTPDOCDIR}
	${INSTALL_DATA}	${WRKSRC}/README ${SFTPDOCDIR}/README

.include <bsd.port.mk>
