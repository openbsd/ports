# $OpenBSD: Makefile,v 1.21 2019/07/17 14:46:33 danj Exp $

COMMENT=	greylist milter

DISTNAME=	milter-greylist-4.2.7
REVISION=	5
CATEGORIES=	mail
HOMEPAGE=	http://hcpnet.free.fr/milter-greylist/

MASTER_SITES=	ftp://ftp.espci.fr/pub/milter-greylist/
EXTRACT_SUFX=	.tgz

# BSD license
PERMIT_PACKAGE=		Yes

WANTLIB=	c pthread milter spf2

LIB_DEPENDS=	mail/libspf2 \
		mail/sendmail,-libmilter

BUILD_DEPENDS=	devel/bison

USERNAME=	_milter-greylist:_milter-greylist
GREYLISTDIR=	/var/db/milter-greylist
EXAMPLESDIR=	share/examples/milter-greylist

SUBST_VARS=	GREYLISTDIR USERNAME

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-user=${USERNAME} \
			--with-dumpfile=${GREYLISTDIR}/greylist.db \
			--with-libspf2=${LOCALBASE}

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/greylist.conf \
		${WRKSRC}/greylist.conf.5 ${WRKSRC}/milter-greylist.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-greylist ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-greylist.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/greylist.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/greylist.conf ${PREFIX}/${EXAMPLESDIR}

.include <bsd.port.mk>
