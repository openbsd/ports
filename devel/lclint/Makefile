# $OpenBSD: Makefile,v 1.14 2000/03/05 18:30:25 espie Exp $

DISTNAME=	lclint-2.4b
CATEGORIES=	devel
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.sds.lcs.mit.edu/pub/lclint/

DIST_SUBDIR=	lclint
EXTRACT_ONLY=	${DISTNAME}.src.tar.gz
GUIDE=		guide.tar.gz
DISTFILES=	${EXTRACT_ONLY} ${GUIDE}

MAINTAINER=	espie@cvs.openbsd.org

LICENSE_TYPE=		"GPL NONE"
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No
AUTHOR=		evs@sds.lcs.mit.edu # David Evans
BUGS=		lclint-bug@sds.lcs.mit.edu

# Has to use bison because lclint uses pure parsers
BUILD_DEPENDS=	bison:devel/bison

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes

DOCDIR=	${PREFIX}/share/doc/${DISTNAME}

post-patch:
	@cd ${WRKSRC}/src && gmake up

LIBSRC=${WRKSRC}/lib
LCLINT=${WRKBUILD}/bin/lclint

post-build:
	-cd ${LIBSRC} && rm *.orig
	cd ${LIBSRC} && $(LCLINT) -nolib ansi.h posix.h -dump posix
	cd ${LIBSRC} && $(LCLINT) -DSTRICT -nolib ansi.h posix.h -dump posixstrict
	cd ${LIBSRC} && $(LCLINT) -nolib ansi.h posix.h unix.h -dump unix
	cd ${LIBSRC} && $(LCLINT) -DSTRICT -nolib ansi.h posix.h unix.h -dump unixstrict
post-install:
	@mkdir -p ${DOCDIR}
	@cd ${DOCDIR} && tar zxf ${FULLDISTDIR}/${GUIDE}

test: install
	@cd ${WRKSRC} && gmake test
	
.include <bsd.port.mk>
