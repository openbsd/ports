# $OpenBSD: Makefile.inc,v 1.17 2013/03/11 11:06:04 espie Exp $

ONLY_FOR_ARCHS=	i386

CATEGORIES=	emulators

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_REDHAT=ftp://archive.download.redhat.com/pub/ \
		ftp://ftp.uni-bayreuth.de/pub/redhat.com/

DIST_SUBDIR=	rpm
EXTRACT_ONLY=

BUILD_DEPENDS+=	rpm2cpio-*|rpm-*:converters/rpm2cpio

NO_BUILD=	Yes

PREFIX?=	${LOCALBASE}/emul/redhat
