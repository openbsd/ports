# $OpenBSD: Makefile,v 1.2 2000/06/20 21:11:35 espie Exp $
DISTNAME=	sftp-0.8.1
CATEGORIES=	net security
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.xbill.org/pub/sftp/
HOMEPAGE=	http://www.xbill.org/sftp/

MAINTAINER=	markus@openbsd.org

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
