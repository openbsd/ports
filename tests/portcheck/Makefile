# $OpenBSD: Makefile,v 1.11 2014/05/07 22:28:05 zhuk Exp $

# To add a test named ${testname}:
#  1) If test should catch errors, add sample portcheck output to the
#     ${testname}.sample file in this directory. Otherwise, this file should
#     absent.
#  2) Create test port directory with ${testname} name.
#  3) Add the test to REGRESS_TARGETS.
#  4) If the test doesn't need running plist checks, add the -P to the
#     TEST_${testname}_ARGS variable. Do this in the "test-specific parameters"
#     section below.

# user-customizeable
REGRESS_TARGETS ?=	t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11
PORTCHECK ?=		${PORTSDIR}/infrastructure/bin/portcheck
PORTCHECK_ARGS ?=
SUBST_CMD ?=		${PORTSDIR}/infrastructure/bin/pkg_subst

# internal stuff, non-customizable
PORTCHECK_ROOT_DIR =	${.CURDIR:C,/[^/]+/*$,,}
CATEGORY =		${.CURDIR:C,^${PORTSDIR}/,,}
SUBST_ARGS =		-c -DCATEGORY=${CATEGORY}
SCANNING_MSG =		"scanning ports under the ${PORTSDIR}"

# test-specific parameters
TEST_t1_ARGS =	-N
TEST_t3_ARGS =	-A ${CATEGORY}/t3
TEST_t4_ARGS =	-A -P ${CATEGORY}/t4
TEST_t5_ARGS =	-N
TEST_t7_ARGS =	-P
TEST_t8_ARGS =	-P
TEST_t9_ARGS =	-P

# define tests
.for _t in ${REGRESS_TARGETS}
TEST_${_t}_ARGS ?=
TEST_${_t}_DIR =	${.CURDIR}/${_t}
TEST_${_t}_DIFF_OPTS =
. if ${TEST_${_t}_ARGS:M-A}
TEST_${_t}_DIFF_OPTS +=	-I ${SCANNING_MSG}
. endif

# will exist if and only if portcheck returned non-zero
TEST_${_t}_FAIL =	${_t}.failed

# output of portcheck's stdout and stderr
TEST_${_t}_OUT =	${_t}.pkgpath
TEST_${_t}_ERR =	${_t}.errors

CLEANFILES +=		${TEST_${_t}_FAIL} ${TEST_${_t}_ERR} ${TEST_${_t}_OUT}

# sample error list, to compare with actual portcheck output
TEST_${_t}_SAMPLE_SRC =	${.CURDIR}/${_t}.sample

# same as above but after substitution, needed for path independancy
TEST_${_t}_SAMPLE =	${_t}.sample.subst
CLEANFILES +=		${TEST_${_t}_SAMPLE}

. if exists(${TEST_${_t}_SAMPLE_SRC})
${TEST_${_t}_SAMPLE}: ${TEST_${_t}_SAMPLE_SRC}
	@${SUBST_CMD} ${SUBST_ARGS} -DTEST=${_t} $> $@
${_t}: ${TEST_${_t}_SAMPLE}
. endif

${_t}:
	@echo '=> ${_t}'
	@rm -f ${TEST_${_t}_FAIL}
	@(cd ${TEST_${_t}_DIR}; ${PORTCHECK} ${TEST_${_t}_ARGS}) \
	  >${TEST_${_t}_OUT} 2>${TEST_${_t}_ERR} || touch ${TEST_${_t}_FAIL}

. if exists(${TEST_${_t}_SAMPLE_SRC})
# there should be errors printed and portcheck should exit with non-zero code
	@test -e ${TEST_${_t}_FAIL} || echo "${_t}: portcheck did not fail"
	@sort <${TEST_${_t}_ERR} | \
	    diff -u ${TEST_${_t}_DIFF_OPTS} ${TEST_${_t}_SAMPLE} -
. else
# there should be NO errors printed and portcheck should exit with zero code
	@test ! -e ${TEST_${_t}_FAIL} || echo "${_t}: portcheck did not succeed"

# in -A mode, portcheck still prints to stderr ${SCANNING_MSG}
.  if ${TEST_${_t}_ARGS:M-A}
	@echo ${SCANNING_MSG} | \
	   diff -u ${TEST_${_t}_DIFF_OPTS} - ${TEST_${_t}_ERR}
.  else
	@test ! -s ${TEST_${_t}_ERR} || { \
		echo "${_t}: portcheck printed errors:"; \
		cat ${TEST_${_t}_ERR}; \
	}
.  endif
. endif

. if ${TEST_${_t}_ARGS:M-A}
	@test ! -s ${TEST_${_t}_OUT} || { \
		echo "${_t}: portcheck printed on stdout:"; \
		cat ${TEST_${_t}_OUT}; \
	}
. else
	@echo ${CATEGORY}/${_t} | \
	    diff -u ${TEST_${_t}_DIFF_OPTS} - ${TEST_${_t}_OUT}
. endif

.PHONY: ${_t}
.endfor

.include <bsd.regress.mk>
