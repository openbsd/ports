# $OpenBSD: Makefile.inc,v 1.14 2009/10/06 16:03:04 sturm Exp $

ONLY_FOR_ARCHS=	i386

CATEGORIES=	emulators

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_REDHAT=ftp://archive.download.redhat.com/pub/ \
		ftp://ftp.uni-bayreuth.de/pub/redhat.com/

DIST_SUBDIR=	rpm
EXTRACT_ONLY=

BUILD_DEPENDS+=	::converters/rpm2cpio

NO_BUILD=	Yes

PREFIX?=	${LOCALBASE}/emul/redhat
