# $OpenBSD: Makefile,v 1.18 2000/05/26 20:45:54 espie Exp $

DISTNAME=	lclint-2.5m
CATEGORIES=	devel
NEED_VERSION=	 1.230
MASTER_SITES=	http://lclint.cs.virginia.edu/
MASTER_SITES0=	http://lclint.cs.virginia.edu/guide/

DIST_SUBDIR=	lclint
EXTRACT_ONLY=	${DISTNAME}.src.tar.gz
GUIDE=		lclint-guide.tar.gz
DISTFILES=	${EXTRACT_ONLY} ${GUIDE}:0

MAINTAINER=	espie@cvs.openbsd.org

# guide.tar.gz can be redistributed freely provided its contents are not
# altered.

LICENSE_TYPE=		GPL NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
AUTHOR=		evans@cs.virginia.edu # David Evans
BUGS=		lclint-bug@sds.lcs.mit.edu
HOMEPAGE=	http://lclint.cs.virginia.edu/

# Has to use bison because lclint uses pure parsers
BUILD_DEPENDS=	bison::devel/bison

USE_GMAKE=	Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
FAKE=		Yes

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
	cd ${DOCDIR} && tar -zxv -s ,lclint-guide/,, -f ${FULLDISTDIR}/${GUIDE} 

test: install
	@cd ${WRKSRC} && gmake test
	
.include <bsd.port.mk>
