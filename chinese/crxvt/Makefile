# $OpenBSD: Makefile,v 1.3 2000/06/21 03:17:58 kevlo Exp $

DISTNAME=       crxvt-2.10-2
PKGNAME=        zh-${DISTNAME}
CATEGORIES=     chinese 
NEED_VERSION=	1.307
MASTER_SITES=   ftp://ftp.linux.org.tw/pub/xcin/crxvt/old/

MAINTAINER=     kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	${LOCALBASE}/lib/X11/fonts/chinese/taipei16.pcf.gz::chinese/taipeifonts

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS=	--os=OpenBSD --no-menu

post-configure:
	@cp ${FILESDIR}/config.status ${WRKSRC}
	
post-extract:
	@cp ${FILESDIR}/OpenBSD ${WRKSRC}/script/os_def

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/crxvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/man/crxvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
