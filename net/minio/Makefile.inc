CATEGORIES =	net sysutils

MAINTAINER =	Daniel Jakots <obsd@chown.me>

HOMEPAGE =	https://minio.io

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go

