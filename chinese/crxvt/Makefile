# $OpenBSD: Makefile,v 1.4 2000/06/23 02:31:29 kevlo Exp $

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
	mv ${WRKSRC}/config.status ${WRKSRC}/config.status.orig
	sed -e '/OPT_CRXVT_CFONT/s/=.*/=-taipei-ming16-medium-r-normal-*-16-160-*-*-*-*-big5-0/' ${WRKSRC}/config.status.orig > ${WRKSRC}/config.status
	
post-extract:
	mv ${WRKSRC}/script/os_def/FreeBSD ${WRKSRC}/script/os_def/FreeBSD.orig
	sed -e '/OS/s/=.*/=OpenBSD/' ${WRKSRC}/script/os_def/FreeBSD.orig > ${WRKSRC}/script/os_def/OpenBSD

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/crxvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/man/crxvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
