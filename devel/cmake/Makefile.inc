VER =		3.31.8
DISTNAME =	cmake-${VER}
CATEGORIES ?=	devel

HOMEPAGE =	https://www.cmake.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SITES =		https://www.cmake.org/files/v${VER:R}/

# BSD
PERMIT_PACKAGE =	Yes

.if !defined(NO_BUILD) || ${NO_BUILD:L} != yes
COMPILER =		base-clang ports-gcc

PATCHDIR ?=		${.CURDIR}/../patches
CHECKSUM_FILE ?=	${.CURDIR}/../distinfo

SUBST_FILES =	${WRKDIST}/Source/cmLocalGenerator.cxx \
		${WRKDIST}/Source/CPack/cmCPackGenerator.cxx \
		${WRKDIST}/bootstrap

post-patch:
	find ${WRKDIST}/Modules -name "*.cmake" \
		-exec sed -i -e 's,/usr/local,${LOCALBASE},g' \
		-e 's,/usr/X11R6,${X11BASE},g' {} +
	find ${WRKDIST}/Tests -name "CMakeLists.txt" \
		-exec perl -e -i 's,/usr/local,${LOCALBASE},g' \
		-e 's,/usr/X11R6,${X11BASE},g' {} +
	perl -e 's,/usr/local,${LOCALBASE},g' \
		${SUBST_FILES}
	perl -e 's,/usr/include,${LOCALBASE}/include,' \
		${WRKDIST}/Modules/FindDCMTK.cmake

pre-configure:
	@find ${WRKDIST}/Modules -name "*.cmake" -exec ${SUBST_CMD} {} +
	@find ${WRKDIST}/Tests -name "CMakeLists.txt" -exec ${SUBST_CMD} {} +
	@${SUBST_CMD} ${SUBST_FILES}

post-install:
	@find ${WRKINST}${LOCALBASE} \( -name "*.bak" \
		-o -name "*${PATCHORIG}" \
		-o -name "*.beforesubst" \) -delete

.endif
