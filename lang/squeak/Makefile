# $OpenBSD: Makefile,v 1.3 2002/03/24 16:31:39 espie Exp $


COMMENT=	"smalltalk system"
CATEGORIES=	lang
NEED_VERSION=	1.400
MAINTAINER=	Marc Espie <espie@openbsd.org>


# Apple license, similar to GPL, with a clause to protect Apple
# against litigation
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes


MAJOR=3
MINOR=0
SUB=3552
V=${MAJOR}.${MINOR}
SUBST_VARS=V MAJOR
DIST_SUBDIR=squeak$V

FTPSITE=	ftp://st.cs.uiuc.edu/pub/Smalltalk/Squeak
HOMEPAGE=	http://squeak.org/
MASTER_SITES=${FTPSITE}/$V/platform-independent/
MASTER_SITES0=${FTPSITE}/$V/unix-linux/src/ \
	http://www-sor.inria.fr/~piumarta/squeak/unix/

COMMON_FILES=ReadMe.txt.gz MajorShrinkFor$V.cs.gz SqueakV${MAJOR}.sources.gz

IMAGE=Squeak$V-${SUB}.zip

DISTNAME=squeak-$V
DISTFILES=Squeak-$V-src.tar.gz:0 ${COMMON_FILES} ${IMAGE}

EXTRACT_ONLY=Squeak-$V-src.tar.gz ${IMAGE}

WRKDIST=${WRKDIR}/Squeak-$V
WRKSRC=	${WRKDIST}/src/unix

SEPARATE_BUILD=simple

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=RANLIB=ranlib
#MAKE_FLAGS=CFLAGS=-O2
#ALL_TARGET=squeak plugins map
ALL_TARGET=all squeak.1
USE_GMAKE=yes

MAKE_FLAGS=INTERP=gnu-interp docdir=${TRUEPREFIX}/share/doc/squeak-$V
FAKE_FLAGS=${MAKE_FLAGS} DESTDIR=${WRKINST}

PLUGINS= Profiler.so SoundCodecPrims.so Squeak3D.so System.so

post-extract:
	cp ${FILESDIR}/sqOpenBSDSound.c ${WRKSRC}
	rm ${WRKSRC}/sqUnixSound.c
	gzip ${WRKDIR}/Squeak$V.{changes,image}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/squeak
	for i in ${COMMON_FILES}; \
	do \
		${INSTALL_DATA} ${FULLDISTDIR}/$$i ${PREFIX}/share/squeak; \
	done
	${INSTALL_DATA} ${WRKDIR}/Squeak$V.changes.gz ${PREFIX}/share/squeak
	${INSTALL_DATA} ${WRKDIR}/Squeak$V.image.gz ${PREFIX}/share/squeak
	gunzip ${PREFIX}/share/squeak/SqueakV${MAJOR}.sources.gz
	sed -e 's,@PREFIX@,${TRUEPREFIX},' -e 's,@V@,$V,' \
	    <${FILESDIR}/inisqueak >${PREFIX}/lib/squeak/$V/inisqueak
	@chmod a+x ${PREFIX}/bin/inisqueak

.include <bsd.port.mk>
