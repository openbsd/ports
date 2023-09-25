DIST_SUBDIR ?=	alephone

CATEGORIES =	games

MAINTAINER =	Peter Hessler <phessler@openbsd.org>

SITES =	http://trilogyrelease.bungie.org/files/
SITES.a = ftp://ftp2.fileball.net/fileball/marathon/aleph1/alterations/
SITES.b = http://www.lhowon.org/
SITES.c = http://nardofiles.bungie.org/
SITES.d = http://www.appleswitch.com/uploads/
SITES.e = http://archives2.bungie.org/manuals/
SITES.f = http://files3.bungie.org/trilogy/
SITES.g = https://github.com/Aleph-One-Marathon/alephone/releases/download/release-${V}/

RUN_DEPENDS =	games/alephone/alephone

# technically not, but it saves recompressing 300MB on slower arches to make
# some useless packages
BUILD_DEPENDS += games/alephone/alephone

NO_BUILD =	Yes
NO_TEST =	Yes
