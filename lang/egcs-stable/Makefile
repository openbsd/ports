# OpenBSD makefile for:	egcs
# Version required:	release 1.1b
# Date created:		25 sep 98
# Whom:			Marc Espie
#
# $OpenBSD: Makefile,v 1.4 1998/10/13 14:52:34 espie Exp $
#

# This is a configuration file for egcs, stable release
# right now, we only configure i386, C and C++.
# g77 and objc didn't make it for 2.4.

DISTNAME=	egcs-1.1b
DIRECTORY=egcs/releases/egcs-1.1b/

DISTFILES=	egcs-core-1.1b${EXTRACT_SUFX}
DISTFILES+=     egcs-g++-1.1b${EXTRACT_SUFX}
# see files/tests for testing procedure
#DISTFILES+=egcs-tests-1.1b${EXTRACT_SUFX}
# to be added...
#DISTFILES+=egcs-g77-1.1b${EXTRACT_SUFX}
#DISTFILES+=egcs-objc-1.1b${EXTRACT_SUFX}

CATEGORIES=	lang 
MASTER_SITES=	ftp://egcs.cygnus.com/pub/${DIRECTORY} 
MASTER_SITES+=	ftp://ftp.lip6.fr/pub/${DIRECTORY}
MASTER_SITES+= ftp://go.cygnus.com/pub/ftp.cygnus.com/${DIRECTORY}
MASTER_SITES+= ftp://ftp.goof.com/pub/pcg/${DIRECTORY}
MASTER_SITES+= ftp://cambridge.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.ninemoons.com/pub/mirrors/${DIRECTORY}
MASTER_SITES+= ftp://sunsite.doc.ic.ac.uk/Mirrors/egcs.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://gd.tuwien.ac.at/gnu/${DIRECTORY}
MASTER_SITES+= ftp://ftp.ilog.fr/pub/Mirrors/${DIRECTORY}
MASTER_SITES+= ftp://ftp.irisa.fr/pub/mirrors/${DIRECTORY}
MASTER_SITES+= ftp://sunsite.mff.cuni.cz/pub/GNU/${DIRECTORY}
MASTER_SITES+= ftp://ftp.gts.cz/pub/MIRRORS/ftp.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://sunsite.auc.dk/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.fu-berlin.de/unix/languages/${DIRECTORY}
MASTER_SITES+= ftp://ftp.gwdg.de/pub/cygnus/${DIRECTORY}
MASTER_SITES+= ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/egcs.cygnus.com/${DIRECTORY}
MASTER_SITES+= ftp://ftp.uni-trier.de/pub/languages/c/implementation/${DIRECTORY}
MASTER_SITES+= ftp://sunsite.icm.edu.pl/pub/programming/${DIRECTORY}
MASTER_SITES+= ftp://ftp.task.gda.pl/mirror/egcs.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.sunet.se/pub/gnu/${DIRECTORY}
MASTER_SITES+= ftp://ftp.unicamp.br/pub/gnu/=EXTRA=/cygnus/${DIRECTORY}
MASTER_SITES+= ftp://ftp.lca.uevora.pt/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.lbi.ro/mirrors/ftp.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://moshpit.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.ntua.gr/pub/gnu/${DIRECTORY}
MASTER_SITES+= ftp://ftp.nluug.nl/pub/languages/${DIRECTORY}
MASTER_SITES+= ftp://ftp.dti.ad.jp/pub/lang/${DIRECTORY}
MASTER_SITES+= ftp://ftp.win.or.jp/pub/lang/${DIRECTORY}
MASTER_SITES+= ftp://ftp.telewaynet.ad.jp/pub/lang/${DIRECTORY}
MASTER_SITES+= ftp://ftp.lab.kdd.co.jp/lang/${DIRECTORY}
MASTER_SITES+= ftp://cair-archive.kaist.ac.kr/pub/gnu/${DIRECTORY}
MASTER_SITES+= ftp://ftp.funet.fi/mirrors/ftp.cygnus.com/pub/${DIRECTORY}
MASTER_SITES+= ftp://ftp.crc.ca/pub/packages/${DIRECTORY}
MASTER_SITES+= ftp://ftp.nc.orc.ru/pub/${DIRECTORY}
MASTER_SITES+= ftp://linux.ihep.su/pub/cygnus/${DIRECTORY}
MASTER_SITES+= ftp://ftp.goof.com/pub/pcg/${DIRECTORY}
MASTER_SITES+= ftp://ftp.u-aizu.ac.jp/pub/lang/C/pcg/${DIRECTORY}
MASTER_SITES+= ftp://linux.cis.nctu.edu.tw/pub/packages/pcg/${DIRECTORY}
MASTER_SITES+= ftp://ftp.maisel.int-evry.fr/pub/linux/pentium/${DIRECTORY}

MAINTAINER=	Marc.Espie@openbsd.org

BUILD_DEPENDS=	autoconf:${PORTSDIR}/devel/autoconf

# will improve over time as more and more architectures are handled
ONLY_FOR_ARCHS = i386 amiga atari hp300 mac68k mvme68k

GNU_CONFIGURE=	yes
USE_GMAKE= yes

# don't make bootstrap if you're impatient/you know what you're doing
# use bootstrap-lean if you don't have room.
ALL_TARGET=bootstrap

CONFIGURE_SCRIPT=../source/configure

CONFIGURE_ENV=CFLAGS=-O2
CONFIGURE_ARGS= --prefix=${PREFIX} \
--verbose --with-gnu-ld --with-gnu-as \
--program-transform-name=s,^,e,
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=--enable-shared
.endif

# get openbsd configuration files where they should be
post-patch:
	cp -R ${FILESDIR}/config/* ${WRKSRC}
	rm -rf ${WRKSRC}/texinfo

# rebuild configure file after patching, then move file around !!!
# XXX: don't try to autoconf the main configure file, it's not autoconf.
# + kludge to build in a separate directory.
pre-configure:
	cd ${WRKSRC}/gcc && autoconf
	mv ${WRKSRC} ${WRKDIR}/source
	mkdir ${WRKSRC}

# use the same trick that's used for emacs
pre-install:
.if (${MACHINE_ARCH} != "alpha")
	${RM} -f ${PKGDIR}/PLIST
	${SED} -e "s/ARCH/`${WRKDIR}/source/config.guess`/" ${FILESDIR}/PLIST.template >${PKGDIR}/PLIST
.else
	cp ${FILESDIR}/PLIST.alpha ${PKGDIR}/PLIST
.endif
	
pre-install:
.include <bsd.port.mk>
