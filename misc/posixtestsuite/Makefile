# $OpenBSD: Makefile,v 1.1.1.1 2018/05/02 21:06:46 bluhm Exp $

COMMENT =	open POSIX test suite

DISTNAME =	posixtestsuite-1.5.2

CATEGORIES =	misc

HOMEPAGE =	http://posixtest.sourceforge.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=posixtest/}

BUILD_DEPENDS =		textproc/gsed

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/posixtestsuite

ALL_TARGET =		build-tests t0 t0.val
TEST_TARGET =		run-tests

LIBEXEC_DIR =		${PREFIX}/libexec/posixtestsuite
LIBDATA_DIR =		${PREFIX}/libdata/posixtestsuite

pre-build:
	cd ${WRKBUILD} && ./locate-test --buildable . >build.list
	cd ${WRKBUILD} && ./locate-test --execs . >run.list

post-build:
	cd ${WRKBUILD} &&\
	    while read test; do\
		if [ -f "$$test" -o -f "$${test%.test}".sh ]; then\
		    echo "$$test";\
		fi;\
	    done <run.list >test.list
	cd ${WRKBUILD} &&\
	    file="";\
	    while read line; do\
		IFS=' :.';\
		set -- $$line;\
		unset IFS;\
		name="$$1";\
		action="$$2";\
		result="$$3";\
		case "$$action" in\
		build)\
		    file="$$name".build;\
		    true >"$$file";\
		    case "$$result" in\
		    PASS)\
			;;\
		    FAILED)\
			;;\
		    *)\
			echo "$$name": "$$action" >&2;\
			echo unknown result: "$$result" in "$$line" >&2;\
			exit 1;\
			;;\
		    esac;\
		    echo $$action: $$result >>"$$file";\
		    ;;\
		link)\
		    case "$$result" in\
		    PASS)\
			;;\
		    SKIP)\
			;;\
		    FAILED)\
			;;\
		    *)\
			echo test action: "$$test" "$$action" >&2;\
			echo unknown result: "$$result" in "$$line" >&2;\
			exit 1;\
			;;\
		    esac;\
		    echo $$action: $$result >>"$$file";\
		    ;;\
		esac;\
		echo "$$line" >>"$$file";\
	    done <logfile

do-install:
	${INSTALL_PROGRAM_DIR} ${LIBEXEC_DIR}
	${INSTALL_DATA_DIR} ${LIBDATA_DIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/t0 ${LIBEXEC_DIR}/
	${INSTALL_DATA} ${WRKBUILD}/t0.val ${LIBDATA_DIR}/
	${INSTALL_DATA} ${WRKBUILD}/build.list ${LIBDATA_DIR}/
	${INSTALL_DATA} ${WRKBUILD}/run.list ${LIBDATA_DIR}/
	${INSTALL_DATA} ${WRKBUILD}/test.list ${LIBDATA_DIR}/
	cd ${WRKBUILD} &&\
	    while read test; do\
		echo test $$test;\
		${INSTALL_PROGRAM_DIR} ${LIBEXEC_DIR}/`dirname "$$test"`;\
		${INSTALL_DATA_DIR} ${LIBDATA_DIR}/`dirname "$$test"`;\
		name="$${test%.test}";\
		if [ -f "$$name".sh ]; then\
		    ${INSTALL_SCRIPT} "$$name".sh ${LIBEXEC_DIR}/"$${test}";\
		    ${INSTALL_DATA} "$$name".sh ${LIBDATA_DIR}/"$$name".sh;\
		elif [ -f "$$name".c ]; then\
		    ${INSTALL_PROGRAM} "$$test" ${LIBEXEC_DIR}/"$$test";\
		    ${INSTALL_DATA} "$$name".c ${LIBDATA_DIR}/"$$name".c;\
		else\
		    echo no test source for: $$name >&2;\
		    exit 1;\
		fi;\
	    done <test.list
	cd ${WRKBUILD} &&\
	    while read source; do\
		echo source $$source;\
		${INSTALL_DATA_DIR} ${LIBDATA_DIR}/`dirname "$$source"`;\
		${INSTALL_DATA} "$$source" ${LIBDATA_DIR}/"$$source";\
		name="$${source%.c}";\
		${INSTALL_DATA} "$$name".build ${LIBDATA_DIR}/"$$name".build;\
	    done <build.list
	${SUBST_PROGRAM} ${FILESDIR}/posixtestsuite.sh\
	    ${PREFIX}/bin/posixtestsuite

.include <bsd.port.mk>
