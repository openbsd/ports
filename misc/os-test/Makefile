# $OpenBSD: Makefile,v 1.2 2018/04/13 15:46:47 ajacoutot Exp $

COMMENT =	test suites for POSIX operating systems

GL_COMMIT =	0a1066eac2aeba09c52eb4ff30dcbbada4c5f685
GL_ACCOUNT =	sortix
GL_PROJECT =	os-test
REVISION =	0

DISTNAME =	${GL_PROJECT}-${GL_COMMIT}
# upstream has no version, count git commits instead
PKGNAME =	os-test-0.000041

CATEGORIES =	misc

HOMEPAGE =	https://sortix.org/os-test/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		https://gitlab.com/${GL_ACCOUNT}/${GL_PROJECT}/repository/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX}{archive${EXTRACT_SUFX}?ref=${GL_COMMIT}}

MAKE_FILE =		BSDmakefile

WRKDIST =		${WRKDIR}/${DISTNAME}-${GL_COMMIT}

LIBEXEC_DIR =	${PREFIX}/libexec/os-test
LIBDATA_DIR =	${PREFIX}/libdata/os-test

post-build:
	cd ${WRKBUILD} && make -V SUITE_LIST >suite.list
	cd ${WRKBUILD} && for suite in `cat suite.list`; do\
	    make -C $$suite -V TESTS > $$suite-test.list;\
	    done

do-install:
	${INSTALL_PROGRAM_DIR} ${LIBEXEC_DIR}
	${INSTALL_DATA_DIR} ${LIBDATA_DIR}
	${INSTALL_DATA} ${WRKBUILD}/suite.list ${LIBDATA_DIR}/ &&\
	cd ${WRKBUILD} && for suite in `cat suite.list`; do\
	    ${INSTALL_PROGRAM_DIR} ${LIBEXEC_DIR}/$$suite &&\
	    ${INSTALL_DATA_DIR} ${LIBDATA_DIR}/$$suite &&\
	    ${INSTALL_DATA_DIR} ${LIBDATA_DIR}/$$suite.expect &&\
	    ${INSTALL_DATA} ${WRKBUILD}/$$suite-test.list ${LIBDATA_DIR}/ &&\
	    ${INSTALL_DATA} ${WRKSRC}/$$suite/README ${LIBDATA_DIR}/$$suite/ &&\
	    for test in `cat $$suite-test.list`; do\
		${INSTALL_PROGRAM} $$suite/$$test ${LIBEXEC_DIR}/$$suite/ &&\
		${INSTALL_DATA} $$suite/$$test.c ${LIBDATA_DIR}/$$suite/ &&\
		${INSTALL_DATA} $$suite.expect/$$test*\
		    ${LIBDATA_DIR}/$$suite.expect/;\
		done;\
	    done
	${INSTALL_SCRIPT} ${WRKSRC}/misc/html.sh ${PREFIX}/bin/os-test-html
	${SUBST_PROGRAM} ${FILESDIR}/os-test.sh  ${PREFIX}/bin/os-test

.include <bsd.port.mk>
