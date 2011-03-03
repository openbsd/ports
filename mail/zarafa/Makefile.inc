# $OpenBSD: Makefile.inc,v 1.5 2011/03/03 13:15:23 ajacoutot Exp $

# there is no point in building/running this on NO_SHARED_LIBS archs
SHARED_ONLY=	Yes

V?=		6.40.5
BUILD?=		24860
DISTNAME?=	zcp-source-${V}-${BUILD}
EXTRACT_SUFX?=	.tgz

DIST_SUBDIR?=	zarafa

CATEGORIES+=	mail/zarafa

HOMEPAGE?=	http://www.zarafa.nl/

MAINTAINER?=	Antoine Jacoutot <ajacoutot@openbsd.org>

# zarafa: AGPLv3 (GNU Affero Public License)
# libical: MPL/LGPLv2
# libvmime: GPLv2
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES?=	http://download.zarafa.com/community/final/${V:C/^([0-9]+\.[0-9]+).*/\1/}/${V}-${BUILD}/
