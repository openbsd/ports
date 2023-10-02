COMMENT=	greylist milter

# XXX as of 2023/10 this is very outdated.
# suggest removing if nobody steps up to maintain this.
DISTNAME=	milter-greylist-4.2.7
REVISION=	7
CATEGORIES=	mail
HOMEPAGE=	http://hcpnet.free.fr/milter-greylist/

SITES=		ftp://ftp.espci.fr/pub/milter-greylist/
EXTRACT_SUFX=	.tgz

# BSD license
PERMIT_PACKAGE=		Yes

WANTLIB=	c pthread milter

LIB_DEPENDS=	mail/sendmail,-libmilter

BUILD_DEPENDS=	devel/bison

USERNAME=	_milter-greylist:_milter-greylist
GREYLISTDIR=	/var/db/milter-greylist
EXAMPLESDIR=	share/examples/milter-greylist

SUBST_VARS=	GREYLISTDIR USERNAME

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-user=${USERNAME} \
			--with-dumpfile=${GREYLISTDIR}/greylist.db \
			--with-libmilter=${LOCALBASE}

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
