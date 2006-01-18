# $OpenBSD: Makefile.inc,v 1.9 2006/01/18 05:15:48 steven Exp $

ONLY_FOR_ARCHS=	i386

CATEGORIES=	emulators

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_REDHAT=ftp://archive.download.redhat.com/pub/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.redhat.com/pub/ \
		ftp://ftp.uni-bayreuth.de/pub/redhat.com/

DIST_SUBDIR=	rpm
EXTRACT_ONLY=

BUILD_DEPENDS+=	:rpm->=3.0.6p1:misc/rpm

NO_BUILD=	Yes

PREFIX=		${LOCALBASE}/emul/redhat
