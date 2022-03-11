COMMENT = library implementing the EBU R128 loudness standard

GH_ACCOUNT = jiixyj
GH_PROJECT = libebur128
GH_TAGNAME = v1.2.6

SHARED_LIBS = ebur128 0.0	# 1.2.6

CATEGORIES = audio

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += m

MODULES = devel/cmake
DEBUG_PACKAGES = ${BUILD_PACKAGES}

# enabling tests is somewhat useless: extra build dependency on
# libsndfile, plus the test requires a wav file to be useful,
# and it's definitely interactive
# CONFIGURE_ARGS += -DENABLE_TESTS=ON
NO_TEST = Yes

.include <bsd.port.mk>
