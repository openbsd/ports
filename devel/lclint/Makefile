# $OpenBSD: Makefile,v 1.7 1999/09/24 14:13:06 espie Exp $

NEED_VERSION=	1.116
DISTNAME=	lclint-2.4b
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.sds.lcs.mit.edu/pub/lclint/

DIST_SUBDIR=	lclint
EXTRACT_ONLY=	${DISTNAME}.src.tar.gz
GUIDE=		guide.tar.gz
DISTFILES=	${EXTRACT_ONLY} ${GUIDE}

MAINTAINER=	espie@cvs.openbsd.org
AUTHOR=		evs@sds.lcs.mit.edu # David Evans
BUGS=		lclint-bug@sds.lcs.mit.edu

# Has to use bison because lclint uses pure parsers
BUILD_DEPENDS=	bison:${PORTSDIR}/devel/bison

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

DOCDIR=	${PREFIX}/share/doc/${DISTNAME}

post-patch:
	@cd ${WRKSRC}/src && ${MAKE_PROGRAM} up

LIBSRC=${WRKSRC}/lib
LCLINT=${WRKSRC}/bin/lclint

post-build:
	-cd ${LIBSRC} && rm *.orig
	cd ${LIBSRC} && $(LCLINT) -nolib ansi.h posix.h -dump posix
	cd ${LIBSRC} && $(LCLINT) -DSTRICT -nolib ansi.h posix.h -dump posixstrict
	cd ${LIBSRC} && $(LCLINT) -nolib ansi.h posix.h unix.h -dump unix
	cd ${LIBSRC} && $(LCLINT) -DSTRICT -nolib ansi.h posix.h unix.h -dump unixstrict
post-install:
	@${MKDIR} ${DOCDIR}
	@cd ${DOCDIR} && ${TAR} -zxf ${FULLDISTDIR}/${GUIDE}

test: ${INSTALL_COOKIE}
	@cd ${WRKSRC} && ${MAKE_PROGRAM} test
	
.include <bsd.port.mk>
