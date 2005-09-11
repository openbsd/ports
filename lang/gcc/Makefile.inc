# $OpenBSD: Makefile.inc,v 1.4 2005/09/11 07:40:58 espie Exp $

# common stuff for all gcc ports
# we assume each one defines a V variable.

CATEGORIES=	lang 

PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_CDROM=Yes

COM=		'GNU compiler collection'
COMMENT=	${COM}: core C compiler
COMMENT-c++ =	${COM}: C++ compiler
COMMENT-estdc=	${COM}: C++ compiler library
COMMENT-g77=	${COM}: f77 compiler
COMMENT-f95=	${COM}: f95 compiler
COMMENT-java=	${COM}: java compiler
COMMENT-objc=	${COM}: obj C compiler
COMMENT-ada=	${COM}: Ada compiler

PKGNAME?=	gcc-${FULL_PKGVERSION}
PKGNAME-c++ ?=	g++-${FULL_PKGVERSION}
PKGNAME-estdc?=	libstdc++-${FULL_PKGVERSION}
PKGNAME-g77?=	g77-${FULL_PKGVERSION}
PKGNAME-f95?=	g95-${FULL_PKGVERSION}
PKGNAME-java?=	gcj-${FULL_PKGVERSION}
PKGNAME-objc?=	gobjc-${FULL_PKGVERSION}
PKGNAME-ada?=	gnat-${FULL_PKGVERSION}

DIST_SUBDIR=gcc
CONFIG=${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS+=CONFIG V

MASTER_SITE_GCC+= ftp://gcc.gnu.org/pub/gcc/
MASTER_SITE_GCC+= ftp://ftp.uvsq.fr/pub/gcc/
MASTER_SITE_GCC+= ftp://ftp.grolier.fr/pub/egcs/
MASTER_SITE_GCC+= ftp://gd.tuwien.ac.at/gnu/gcc/
MASTER_SITE_GCC+= ftp://chardonnay.elis.rug.ac.be/pub/mirrors/gcc.cygnus.com/pub/gcc/
MASTER_SITE_GCC+= ftp://gd.tuwien.ac.at/gnu/gcc/
MASTER_SITE_GCC+=	ftp://egcs.cygnus.com/pub/egcs/ 
MASTER_SITE_GCC+= ftp://ftp.goof.com/pub/pcg/egcs/
MASTER_SITE_GCC+= ftp://go.cygnus.com/pub/ftp.cygnus.com/egcs/
MASTER_SITE_GCC+= ftp://cambridge.cygnus.com/pub/egcs/
MASTER_SITE_GCC+= ftp://sunsite.doc.ic.ac.uk/Mirrors/egcs.cygnus.com/pub/egcs/

MASTER_SITE_GCC+= ftp://ftp.gts.cz/pub/MIRRORS/ftp.cygnus.com/pub/egcs/
MASTER_SITE_GCC+= ftp://sunsite.auc.dk/pub/egcs/
MASTER_SITE_GCC+= ftp://ftp.fu-berlin.de/unix/languages/egcs/egcs/
MASTER_SITE_GCC+= ftp://ftp.gwdg.de/pub/cygnus/egcs/
MASTER_SITE_GCC+= ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/egcs.cygnus.com/egcs/
MASTER_SITE_GCC+= ftp://ftp.uni-trier.de/pub/languages/c/implementation/egcs/
MASTER_SITE_GCC+= ftp://ftp.sunet.se/pub/gnu/egcs/
MASTER_SITE_GCC+= ftp://ftp.unicamp.br/pub/gnu/=EXTRA=/cygnus/egcs/
MASTER_SITE_GCC+= ftp://ftp.lbi.ro/mirrors/ftp.cygnus.com/pub/egcs/
MASTER_SITE_GCC+= ftp://ftp.ntua.gr/pub/gnu/egcs/
MASTER_SITE_GCC+= ftp://ftp.nluug.nl/pub/languages/egcs/
MASTER_SITE_GCC+= ftp://ftp.dti.ad.jp/pub/lang/egcs/
MASTER_SITE_GCC+= ftp://ftp.win.or.jp/pub/lang/egcs/
MASTER_SITE_GCC+= ftp://ftp.telewaynet.ad.jp/pub/lang/egcs/
MASTER_SITE_GCC+= ftp://ftp.lab.kdd.co.jp/lang/egcs/
MASTER_SITE_GCC+= ftp://ftp.crc.ca/pub/packages/egcs/
MASTER_SITE_GCC+= ftp://ftp.nc.orc.ru/pub/egcs/
MASTER_SITE_GCC+= ftp://ftp.u-aizu.ac.jp/pub/lang/C/pcg/egcs/
MASTER_SITE_GCC+= ftp://ftp.maisel.int-evry.fr/pub/linux/pentium/egcs/
MASTER_SITE_GCC+= ftp://ftp.yggdrasil.com/mirrors/site/egcs.cygnus.com/pub/egcs/
MASTER_SITE_GCC+= ftp://unix.hensa.ac.uk/mirrors/egcs.cygnus.com/pub/egcs/

# Can't contact those, maybe they work ?
MASTER_SITE_GCC+= ftp://sunsite.mff.cuni.cz/pub/GNU/egcs/
MASTER_SITE_GCC+= ftp://sunsite.icm.edu.pl/pub/programming/egcs/
MASTER_SITE_GCC+= ftp://ftp.task.gda.pl/mirror/egcs.cygnus.com/pub/egcs/
MASTER_SITE_GCC+= ftp://ftp.lca.uevora.pt/pub/egcs/
MASTER_SITE_GCC+= ftp://cair-archive.kaist.ac.kr/pub/gnu/egcs/
MASTER_SITE_GCC+= ftp://linux.ihep.su/pub/cygnus/egcs/
MASTER_SITE_GCC+= ftp://linux.cis.nctu.edu.tw/pub/packages/pcg/egcs/
MASTER_SITE_GCC+= ftp://ftp.ninemoons.com/pub/mirrors/egcs/
