# $OpenBSD: Makefile,v 1.30 2002/07/28 02:11:37 brad Exp $

COMMENT=	"Berkeley DB package, revision 3"

VMM=		3.1
VERSION=	${VMM}.17
DISTNAME=	db-${VERSION}
CATEGORIES=	databases
HOMEPAGE=	http://www.sleepycat.com/
MASTER_SITES=	${HOMEPAGE}/update/snapshot/

TCL_VERSION=	8.3

MAINTAINER=	Heikki Korpela <heko@openbsd.org>

# License: BSD+SleepyCat's additions.
# Must purchase license to redistribute if not distributing the source.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS+=	--enable-compat185 
CONFIGURE_ARGS+=	--enable-dump185
CONFIGURE_ARGS+=	--enable-cxx
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/dist

WRKBUILD=	${WRKDIST}/build_unix

FLAVORS=	tcl
FLAVOR?=

.if ${FLAVOR:L:Mtcl}
# We can't use NO_SHARED_LIBS and IGNORE because IGNORE
# is only handled by bsd.port.mk and NO_SHARED_LIBS doesn't get
# defined until bsd.port.mk..
NOT_FOR_ARCHS=	hppa mvme88k vax
LIB_DEPENDS+=	tcl83.1.3::lang/tcl/${TCL_VERSION}
# Argh.
CFLAGS+=-I${LOCALBASE}/include/tcl${TCL_VERSION}
CONFIGURE_ARGS+= --enable-tcl 
CONFIGURE_ARGS+= --with-tcl=${LOCALBASE}/lib/tcl${TCL_VERSION}
.else
CONFIGURE_ARGS+= --disable-tcl
.endif

post-install:
	@mv ${PREFIX}/include/db.h ${PREFIX}/include/db3.h
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/db
	cd ${WRKSRC}/examples_c; ${INSTALL_DATA} *.c \
		${PREFIX}/share/examples/db
	cd ${WRKSRC}/examples_cxx; ${INSTALL_DATA} *.cpp \
		${PREFIX}/share/examples/db

.include <bsd.port.mk>
