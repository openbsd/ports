# $OpenBSD: Makefile,v 1.13 2002/10/24 23:52:29 naddy Exp $

COMMENT=	"Chinese(Big5) VT100 terminal emulator for X"

DISTNAME=       crxvt-2.10-2
PKGNAME=        zh-crxvt-2.10.2
CATEGORIES=     chinese 

MASTER_SITES=   ftp://ftp.linux.org.tw/pub/xcin/old/ \
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/chinese/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::chinese/taipeifonts

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS=	--os=OpenBSD --no-menu

post-configure:
	mv ${WRKSRC}/config.status ${WRKSRC}/config.status.orig
	sed -e '/OPT_CRXVT_CFONT/s/=.*/=-taipei-ming-medium-r-normal--16-160-75-75-c-160-big5-0/' ${WRKSRC}/config.status.orig > ${WRKSRC}/config.status
	
post-extract:
	mv ${WRKSRC}/script/os_def/FreeBSD ${WRKSRC}/script/os_def/FreeBSD.orig
	sed -e '/OS/s/=.*/=OpenBSD/' ${WRKSRC}/script/os_def/FreeBSD.orig > ${WRKSRC}/script/os_def/OpenBSD

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/crxvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/man/crxvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
