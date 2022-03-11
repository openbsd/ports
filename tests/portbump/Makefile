# To add a test named ${testname}:
#  1) Create test port directory with ${testname} name.
#  2) Create the ${testname}.sample containing the desired result
#     after bumping the test Makefile.
#  3) Add the test to REGRESS_TARGETS.

# Get site-specific settings (like PORTSDIR) from /etc/mk.conf
.include <bsd.own.mk>

# user-customizeable
REGRESS_TARGETS ?=	t1 t2 t3 t4 t5 t6 t7 t8 t9 t10
PORTSDIR ?=		/usr/ports
PORTBUMP ?=		${PORTSDIR}/infrastructure/bin/portbump
PORTBUMP_ARGS ?=
DIFF ?=			diff -u

# test-specific parameters
TEST_t2_ARGS =		,-main -fpm
TEST_t4_ARGS =		-d
TEST_t5_ARGS =		-W qwe
TEST_t6_ARGS =		-l
TEST_t7_ARGS =		-l
TEST_t10_ARGS =		-- -main

# define tests
.for _t in ${REGRESS_TARGETS}
TEST_${_t}_DIR =	${.CURDIR}/${_t}
TEST_${_t}_SAMPLE =	${.CURDIR}/${_t}.sample
TEST_${_t}_RESULT =	${.OBJDIR}/${_t}.result

TEST_${_t}_ARGS ?=
CLEANFILES +=		${TEST_${_t}_RESULT}

${_t}:
	@echo '=> ${_t}'
.if ${TEST_${_t}_ARGS:M-l}
	cd ${TEST_${_t}_DIR}; make clean fake
.endif
	cd ${TEST_${_t}_DIR}; ${PORTBUMP} -o ${TEST_${_t}_RESULT} ${TEST_${_t}_ARGS}
	@${DIFF} ${TEST_${_t}_SAMPLE} ${TEST_${_t}_RESULT}

.PHONY: ${_t}
.endfor

.include <bsd.regress.mk>
