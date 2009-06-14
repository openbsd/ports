# $OpenBSD: Makefile.inc,v 1.2 2009/06/14 16:30:27 jsg Exp $

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

BUILD_DEPENDS+=	:rpm->=3.0.6p1:misc/rpm

NO_BUILD=	Yes
NO_REGRESS=	Yes

FEDORADIR=	${PREFIX}/emul/fedora
