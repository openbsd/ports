# $OpenBSD: Makefile,v 1.6 2019/07/12 20:47:53 sthen Exp $

COMMENT =	open POSIX test suite

DISTNAME =	posixtestsuite-1.5.2
REVISION =	3

CATEGORIES =	misc

HOMEPAGE =	http://posixtest.sourceforge.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=posixtest/}

BUILD_DEPENDS =		textproc/gsed

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/posixtestsuite

ALL_TARGET =		build-tests t0 t0.val
TEST_TARGET =		run-tests

LIBEXEC_DIR =		${PREFIX}/libexec/posixtestsuite
LIBDATA_DIR =		${PREFIX}/libdata/posixtestsuite

BUILDONLY_USER =	conformance/interfaces/sigaddset/1-1.sh \
			conformance/interfaces/sigaddset/1-2.sh \
			conformance/interfaces/sigaddset/4-1.sh \
			conformance/interfaces/sigaddset/4-2.sh \
			conformance/interfaces/sigaddset/4-3.sh \
			conformance/interfaces/sigaddset/4-4.sh \
			conformance/interfaces/sigdelset/1-1.sh \
			conformance/interfaces/sigdelset/1-2.sh \
			conformance/interfaces/sigdelset/4-1.sh \
			conformance/interfaces/sigdelset/4-2.sh \
			conformance/interfaces/sigdelset/4-3.sh \
			conformance/interfaces/sigdelset/4-4.sh \
			conformance/interfaces/sighold/3-1.sh \
			conformance/interfaces/sighold/3-2.sh \
			conformance/interfaces/sighold/3-3.sh \
			conformance/interfaces/sighold/3-4.sh \
			conformance/interfaces/sigignore/5-1.sh \
			conformance/interfaces/sigignore/5-2.sh \
			conformance/interfaces/sigignore/5-3.sh \
			conformance/interfaces/sigignore/5-4.sh \
			conformance/interfaces/sigismember/5-1.sh \
			conformance/interfaces/sigismember/5-2.sh \
			conformance/interfaces/sigismember/5-3.sh \
			conformance/interfaces/sigismember/5-4.sh \
			conformance/interfaces/sigprocmask/17-1.sh \
			conformance/interfaces/sigprocmask/17-2.sh \
			conformance/interfaces/sigprocmask/17-3.sh \
			conformance/interfaces/sigprocmask/17-4.sh \
			conformance/interfaces/sigrelse/3-1.sh \
			conformance/interfaces/sigrelse/3-2.sh \
			conformance/interfaces/sigrelse/3-3.sh \
			conformance/interfaces/sigrelse/3-4.sh \
			conformance/interfaces/sigaltstack/9-1.c

pre-build:
	cd ${WRKBUILD} && ./locate-test --buildable . >build.list.tmp
	cd ${WRKBUILD} && ./locate-test --execs . >run.list.tmp
	cd ${WRKBUILD} && sed 's,^\./,,' build.list.tmp | sort >build.list
	cd ${WRKBUILD} && sed 's,^\./,,' run.list.tmp | sort >run.list
	cd ${WRKBUILD} && rm -f *.tmp
	cd ${WRKBUILD} && ${SUBST_CMD} ${BUILDONLY_USER}

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
		IFS=' :';\
		set -- $$line;\
		unset IFS;\
		name="$$1";\
		action="$$2";\
		result="$$3";\
		case "$$action" in\
		build)\
		    file="$$name".build.log;\
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
	cd ${WRKBUILD} && sh -n ${FILESDIR}/posixtestsuite.sh
	cd ${WRKBUILD} && perl -c ${FILESDIR}/posixtestsuite-html.pl

do-install:
	${INSTALL_PROGRAM_DIR} ${LIBEXEC_DIR}
	${INSTALL_DATA_DIR} ${LIBDATA_DIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/t0 ${LIBEXEC_DIR}/
	${INSTALL_DATA} ${WRKBUILD}/t0.val ${LIBDATA_DIR}/
	${INSTALL_DATA} ${WRKBUILD}/build.list ${LIBDATA_DIR}/
	${INSTALL_DATA} ${WRKBUILD}/run.list ${LIBDATA_DIR}/
	${INSTALL_DATA} ${WRKBUILD}/test.list ${LIBDATA_DIR}/
	${INSTALL_DATA} ${WRKBUILD}/logfile ${LIBDATA_DIR}/build.log
	cd ${WRKBUILD} &&\
	    while read test; do\
		echo test "$$test";\
		name="$${test%.test}";\
		dir=`dirname "$$name"`;\
		[ -f "$$name".sh ] || continue;\
		${INSTALL_DATA_DIR} ${LIBDATA_DIR}/$$dir;\
		${INSTALL_DATA} "$$name".sh ${LIBDATA_DIR}/"$$name".sh;\
		${INSTALL_PROGRAM_DIR} ${LIBEXEC_DIR}/$$dir;\
		${INSTALL_SCRIPT} "$$name".sh ${LIBEXEC_DIR}/"$${test}";\
	    done <test.list
	cd ${WRKBUILD} &&\
	    while read source; do\
		echo source "$$source";\
		name="$${source%.c}";\
		dir=`dirname "$$name"`;\
		${INSTALL_DATA_DIR} ${LIBDATA_DIR}/$$dir;\
		${INSTALL_DATA} "$$name".c ${LIBDATA_DIR}/"$$name".c;\
		${INSTALL_DATA} "$$name".build.log\
		    ${LIBDATA_DIR}/"$$name".build.log;\
		[ -f "$$name".test ] || continue;\
		${INSTALL_PROGRAM_DIR} ${LIBEXEC_DIR}/$$dir;\
		${INSTALL_PROGRAM} "$$name".test ${LIBEXEC_DIR}/"$$name".test;\
	    done <build.list
	${SUBST_PROGRAM} ${FILESDIR}/posixtestsuite.sh\
	    ${PREFIX}/bin/posixtestsuite
	${INSTALL_SCRIPT} ${FILESDIR}/posixtestsuite-html.pl\
	    ${PREFIX}/bin/posixtestsuite-html

.include <bsd.port.mk>
