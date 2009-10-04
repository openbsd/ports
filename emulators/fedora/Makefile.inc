# $OpenBSD: Makefile.inc,v 1.3 2009/10/04 10:56:20 sturm Exp $

ONLY_FOR_ARCHS=	i386
SHARED_ONLY=	Yes

CATEGORIES=	emulators

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_FEDORA=http://archive.fedoraproject.org/pub/archive/fedora/linux/core/ \
	ftp://archive.kernel.org/fedora-archive/core/

DIST_SUBDIR=	rpm
EXTRACT_ONLY=

BUILD_DEPENDS+=	::converters/rpm2cpio

NO_BUILD=	Yes
NO_REGRESS=	Yes

FEDORADIR=	${PREFIX}/emul/fedora
