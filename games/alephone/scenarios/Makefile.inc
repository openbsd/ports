DIST_SUBDIR ?=	alephone

CATEGORIES =	games

MAINTAINER =	Peter Hessler <phessler@openbsd.org>

MASTER_SITES =	http://trilogyrelease.bungie.org/files/
MASTER_SITES0 =	ftp://ftp2.fileball.net/fileball/marathon/aleph1/alterations/
MASTER_SITES1 =	http://www.lhowon.org/
MASTER_SITES2 =	http://nardofiles.bungie.org/
MASTER_SITES3 =	http://www.appleswitch.com/uploads/
MASTER_SITES4 = http://archives2.bungie.org/manuals/
MASTER_SITES5 = http://files3.bungie.org/trilogy/
MASTER_SITES6 = https://github.com/Aleph-One-Marathon/alephone/releases/download/release-${V}/

RUN_DEPENDS =	games/alephone/alephone

# technically not, but it saves recompressing 300MB on slower arches to make
# some useless packages
BUILD_DEPENDS += games/alephone/alephone

NO_BUILD =	Yes
NO_TEST =	Yes
