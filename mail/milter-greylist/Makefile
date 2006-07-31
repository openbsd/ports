# $OpenBSD: Makefile,v 1.1.1.1 2006/07/31 12:36:43 jakob Exp $

COMMENT=	"greylist milter"

DISTNAME=	milter-greylist-2.0.2
PKGNAME=	${DISTNAME}
CATEGORIES=	mail
HOMEPAGE=	http://hcpnet.free.fr/milter-greylist/

MASTER_SITES=	ftp://ftp.espci.fr/pub/milter-greylist/
EXTRACT_SUFX=	.tgz

# BSD license
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

WANTLIB=	c pthread milter

BUILD_DEPENDS=	::devel/bison

USERNAME=	_milter-greylist
EXAMPLESDIR=	share/examples/milter-greylist

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-user=${USERNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-greylist ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-greylist.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/greylist.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/greylist.conf ${PREFIX}/${EXAMPLESDIR}

.include <bsd.port.mk>
