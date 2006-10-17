# $OpenBSD: Makefile.inc,v 1.1.1.1 2006/10/17 22:33:44 sturm Exp $

ONLY_FOR_ARCHS=	i386
SHARED_ONLY=	Yes

CATEGORIES=	emulators

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_FEDORA=http://download.fedora.redhat.com/pub/fedora/linux/core/ \
	ftp://ftp.funet.fi/pub/mirrors/ftp.redhat.com/pub/fedora/linux/core/

DIST_SUBDIR=	rpm
EXTRACT_ONLY=

BUILD_DEPENDS+=	:rpm->=3.0.6p1:misc/rpm

NO_BUILD=	Yes
NO_REGRESS=	Yes

FEDORADIR=	${PREFIX}/emul/fedora
