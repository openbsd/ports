# $OpenBSD: Makefile.inc,v 1.6 2012/10/11 10:16:29 robert Exp $

ONLY_FOR_ARCHS=	i386
SHARED_ONLY=	Yes

CATEGORIES=	emulators

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_FEDORA=	http://critical.ch/distfiles/rpm/i386/fedora/ \
			http://energy.critical.ch/distfiles/rpm/i386/fedora/ \
			http://snow.critical.ch/distfiles/rpm/i386/fedora/ \
			http://www.bluestop.org/distfiles/rpm/i386/fedora/

MASTER_SITE_FEDORA0=	http://ftp-stud.hs-esslingen.de/pub/Mirrors/archive.fedoraproject.org/fedora/linux/releases/

DIST_SUBDIR=	rpm
EXTRACT_ONLY=

BUILD_DEPENDS+=	rpm-*|rpm2cpio-*:converters/rpm2cpio \
		archivers/gcpio

NO_BUILD=	Yes
NO_REGRESS=	Yes

FEDORADIR=	${PREFIX}/emul/fedora
