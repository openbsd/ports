# $OpenBSD: Makefile.inc,v 1.18 2013/03/11 12:27:54 sthen Exp $

ONLY_FOR_ARCHS=	i386

CATEGORIES=	emulators

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITE_REDHAT=ftp://archive.download.redhat.com/pub/ \
		ftp://ftp.uni-bayreuth.de/pub/redhat.com/

DIST_SUBDIR=	rpm
EXTRACT_ONLY=

BUILD_DEPENDS+=	rpm2cpio-*|rpm-*:converters/rpm2cpio

NO_BUILD=	Yes

PREFIX?=	${LOCALBASE}/emul/redhat
