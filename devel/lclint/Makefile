# $OpenBSD: Makefile,v 1.27 2001/10/05 00:20:00 espie Exp $

COMMENT=	"advanced lint: statically check C programs"

DISTNAME=	lclint-2.5r
CATEGORIES=	devel
NEED_VERSION=	1.470
#MASTER_SITES=	ftp://ftp.openbsd.org/pub/OpenBSD/distfiles/${DIST_SUBDIR}/
MASTER_SITES=	http://lclint.cs.virginia.edu/
MASTER_SITES0=	http://lclint.cs.virginia.edu/guide/

DIST_SUBDIR=	lclint
EXTRACT_ONLY=	${DISTNAME}.src.tar.gz
GUIDE=		lclint-guide.tar.gz
DISTFILES=	${EXTRACT_ONLY} ${GUIDE}:0

MAINTAINER=	Marc Espie <espie@openbsd.org>

# guide.tar.gz can be redistributed freely provided its contents are not
# altered.

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
AUTHOR=		evans@cs.virginia.edu # David Evans
BUGS=		lclint-bug@sds.lcs.mit.edu
HOMEPAGE=	http://lclint.cs.virginia.edu/

# Has to use bison because lclint uses pure parsers
BUILD_DEPENDS=	::devel/bison

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest

DOCDIR=	${PREFIX}/share/doc/${DISTNAME}

post-patch:
	@cd ${WRKSRC}/src && ${MAKE_PROGRAM} up

LIBSRC=${WRKSRC}/lib
LCLINT=${WRKBUILD}/bin/lclint

post-build:
	-cd ${LIBSRC} && rm *.orig
	cd ${LIBSRC} && $(LCLINT) -nolib ansi.h posix.h -dump posix
	cd ${LIBSRC} && $(LCLINT) -DSTRICT -nolib ansi.h posix.h -dump posixstrict
	cd ${LIBSRC} && $(LCLINT) -nolib ansi.h posix.h unix.h -dump unix
	cd ${LIBSRC} && $(LCLINT) -DSTRICT -nolib ansi.h posix.h unix.h -dump unixstrict
post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${DOCDIR} && tar -zxv -s ,lclint-guide/,, -f ${FULLDISTDIR}/${GUIDE} 

REGRESS_DEPENDS=::devel/lclint
REGRESS_TARGET=test

.include <bsd.port.mk>
