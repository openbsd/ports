DISTNAME=	sftp-0.8.1
CATEGORIES=	net security
MASTER_SITES=	ftp://ftp.xbill.org/pub/sftp/
HOMEPAGE=	http://www.xbill.org/sftp/

MAINTAINER=	markus@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SFTPDOCDIR=	${PREFIX}/share/doc/sftp

GNU_CONFIGURE=	Yes
CONFIGURE_ENV+=	LIBS="-ltermcap"

FAKE=		Yes

post-install:
	@mkdir -p ${SFTPDOCDIR}
	${INSTALL_DATA}	${WRKSRC}/README ${SFTPDOCDIR}/README

.include <bsd.port.mk>
