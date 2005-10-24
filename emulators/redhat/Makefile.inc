# $OpenBSD: Makefile.inc,v 1.8 2005/10/24 10:36:02 aanriot Exp $

ONLY_FOR_ARCHS=	i386

CATEGORIES=	emulators

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_REDHAT=ftp://ftp.redhat.com/pub/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.redhat.com/pub/ \
		ftp://ftp.uni-bayreuth.de/pub/redhat.com/

DIST_SUBDIR=	rpm
EXTRACT_ONLY=

BUILD_DEPENDS+=	:rpm->=3.0.6p1:misc/rpm

NO_BUILD=	Yes

PREFIX=		${LOCALBASE}/emul/redhat
