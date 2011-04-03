# $OpenBSD: Makefile,v 1.1.1.1 2011/04/03 12:04:47 dcoppa Exp $

COMMENT =		minimalistic Mumble server 

DISTNAME =		umurmur-0.2.6

CATEGORIES =		audio

HOMEPAGE =		http://umurmur.googlecode.com/

MASTER_SITES =		${HOMEPAGE}/files/

MAINTAINER =		Jonathon Sisson <sisson.j@gmail.com>

# BSD and Apache 2.0 (see src/google/protobuf-c/*)
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes 

LIB_DEPENDS =		devel/libconfig

MAKE_FLAGS =		EXTRA_CFLAGS="-I${LOCALBASE}/include" \
			EXTRA_LDFLAGS="-L${LOCALBASE}/lib \
					-lcrypto -lssl"

USE_GMAKE =		Yes

WANTLIB = 		c config crypto ssl 

WRKSRC = 		${WRKDIST}/src

post-configure:
	${SUBST_CMD} ${WRKSRC}/conf.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/umurmurd \
		${PREFIX}/sbin/umurmurd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/umurmur
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${WRKBUILD}/../umurmur.conf.example \
		${PREFIX}/share/examples/umurmur/umurmur.conf
	${INSTALL_MAN} ${FILESDIR}/umurmurd.1 \
		${PREFIX}/man/man1/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${FILESDIR}/umurmur.conf.1 \
			${PREFIX}/man/man1/umurmur.conf.1

.include <bsd.port.mk>
