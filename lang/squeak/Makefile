# $OpenBSD: Makefile,v 1.1.1.1 2001/03/13 22:59:14 espie Exp $


CATEGORIES=	lang
NEED_VERSION=	1.355
MAINTAINER=	Marc Espie <espie@openbsd.org>


# Apple license, similar to GPL, with a clause to protect Apple
# against litigation
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes


MAJOR=3
MINOR=0
V=${MAJOR}.${MINOR}
DIST_SUBDIR=squeak3.0

HOMEPAGE=	http://squeak.org/
MASTER_SITES=ftp://st.cs.uiuc.edu/pub/Smalltalk/Squeak/$V/files/
MASTER_SITES0=http://www-sor.inria.fr/~piumarta/squeak/unix/

COMMON_FILES=ReadMe.txt.gz Squeak$Vfinal.changes.gz Squeak$Vfinal.image.gz SqueakV${MAJOR}.sources.gz

DISTNAME=squeak-$V
PKGNAME=squeak-$V.pre2
DISTFILES=Squeak-$Vpre2.tar.gz:0 ${COMMON_FILES}

EXTRACT_ONLY=Squeak-$Vpre2.tar.gz

WRKDIST=${WRKDIR}/Squeak-$V
WRKSRC=	${WRKDIST}/src/unix

SEPARATE_BUILD=simple

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=RANLIB=ranlib LIBS=-lossaudio
#MAKE_FLAGS=CFLAGS=-O2
#ALL_TARGET=squeak plugins map
ALL_TARGET=all squeak.1
USE_GMAKE=yes

MAKE_FLAGS=INTERP=gnu-interp docdir=${TRUEPREFIX}/share/doc/squeak-$V
FAKE_FLAGS=${MAKE_FLAGS} DESTDIR=${WRKINST}

PLUGINS= Profiler.so SoundCodecPrims.so Squeak3D.so System.so

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/squeak
	cd ${PREFIX}/share/squeak && for i in ${COMMON_FILES}; \
	do \
		${INSTALL_DATA} ${FULLDISTDIR}/$$i ${PREFIX}/share/squeak; \
	done; gunzip SqueakV${MAJOR}.sources.gz
	sed -e 's,@PREFIX@,${TRUEPREFIX},' -e 's,@V@,$V,' \
	    <${FILESDIR}/inisqueak >${PREFIX}/lib/squeak/$V/inisqueak
	@chmod a+x ${PREFIX}/bin/inisqueak

.include <bsd.port.mk>
