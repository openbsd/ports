# $OpenBSD: Makefile.inc,v 1.2 2004/01/10 08:36:27 sturm Exp $

COMMENT=	"Berkeley DB package, revision ${REVISION}"

DISTNAME=	db-${VERSION}
CATEGORIES=	databases
HOMEPAGE=	http://www.sleepycat.com/
MASTER_SITES=	${HOMEPAGE}/update/snapshot/

# License: BSD + SleepyCat's additions.
# Must purchase license to redistribute if not distributing the source.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS+=	--enable-compat185 \
			--enable-dump185 \
			--enable-cxx \
			--enable-static \
			--includedir=$$\{prefix}/include/db${DEST_SUBDIR} \
			--libdir=$$\{prefix}/lib/db${DEST_SUBDIR} \
			${CONFIGURE_SHARED}

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/dist

WRKBUILD=	${WRKDIST}/build_unix

FLAVORS=	tcl
FLAVOR?=

.if ${FLAVOR:L:Mtcl}
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

TCL_VERSION=	8.4
LIB_DEPENDS+=	tcl${TCL_VERSION:S/.//}::lang/tcl/${TCL_VERSION}
CFLAGS+=	-I${LOCALBASE}/include/tcl${TCL_VERSION}
CONFIGURE_ARGS+=--enable-tcl \
		--with-tcl=${LOCALBASE}/lib/tcl${TCL_VERSION}

# this compiles slightly different code, some tests fail nevertheless
#CONFIGURE_ARGS+=--enable-test

do-regress:
	@cd ${WRKBUILD}; tclsh${TCL_VERSION} ${FILESDIR}/regress.tcl

.else
CONFIGURE_ARGS+=--disable-tcl
# regression tests need tcl
NO_REGRESS=	Yes
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/db${DEST_SUBDIR}
	cd ${WRKSRC}/examples_c; ${INSTALL_DATA} *.c \
		${PREFIX}/share/examples/db${DEST_SUBDIR}
	cd ${WRKSRC}/examples_cxx; ${INSTALL_DATA} *.cpp \
		${PREFIX}/share/examples/db${DEST_SUBDIR}

