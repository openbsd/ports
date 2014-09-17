# $OpenBSD: Makefile,v 1.16 2014/09/17 09:13:12 ajacoutot Exp $

COMMENT=	greylist milter

DISTNAME=	milter-greylist-4.2.7
REVISION=	2
CATEGORIES=	mail
HOMEPAGE=	http://hcpnet.free.fr/milter-greylist/

MASTER_SITES=	ftp://ftp.espci.fr/pub/milter-greylist/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD license
PERMIT_PACKAGE_CDROM=		Yes

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
# needed since libspf2 links against libbind
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib/libbind \
			    -R${LOCALBASE}/lib/libbind"

USE_GROFF =	Yes
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
