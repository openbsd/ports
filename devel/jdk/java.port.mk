# $OpenBSD: java.port.mk,v 1.4 2006/03/20 14:42:37 kurt Exp $

# Set MODJAVA_VER to x.y or x.y+ based on the version
# of the jdk needed for the port. x.y  means any x.y jdk.
# x.y+ means any x.y jdk or higher version. Valid values
# for x.y are 1.3, 1.4 or 1.5.

MODJAVA_VER?=

# Set MODJAVA_JRERUN=yes if the port can run with just
# the jre. This will add the jre's to the RUN_DEPENDS
# based on how MODJAVA_VER is set.

MODJAVA_JRERUN?=no

# Based on the MODJAVA_VER, MODJAVA_JRERUN, NO_BUILD
# and MACHINE_ARCH, the following things will be setup:
#   ONLY_FOR_ARCHS if not already set.
#   BUILD_DEPENDS on a jdk (native preferred).
#   JAVA_HOME to pass on to the port build.
#   RUN_DEPENDS for all jdk's and jre's that can run
#   the port.

.if ${MODJAVA_VER:S/+//} == "1.3"
ONLY_FOR_ARCHS?=	arm i386 powerpc sparc
JAVA_HOME=		${LOCALBASE}/jdk-1.3.1
.  if ${NO_BUILD:L} != "yes"
BUILD_DEPENDS+=		:jdk-1.3.1:devel/jdk/1.3
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
_MODJAVA_RUNDEP_TMP=	jdk-1.3.1|jre-1.3.1
.  else
_MODJAVA_RUNDEP_TMP=	jdk-1.3.1
.  endif
.  if ${MODJAVA_VER} == "1.3+"
_MODJAVA_RUNDEP=	${_MODJAVA_RUNDEP_TMP:S/-/->=/g}
.  else
_MODJAVA_RUNDEP=	${_MODJAVA_RUNDEP_TMP}
.  endif
.  if ${MACHINE_ARCH} == "i386"
RUN_DEPENDS+=		:${_MODJAVA_RUNDEP}|jdk-linux-1.3.1*:devel/jdk/1.3
.  else
RUN_DEPENDS+=		:${_MODJAVA_RUNDEP}:devel/jdk/1.3
.  endif
.elif ${MODJAVA_VER:S/+//} == "1.4"
ONLY_FOR_ARCHS?=	i386
JAVA_HOME=		${LOCALBASE}/jdk-1.4.2
.  if ${NO_BUILD:L} != "yes"
BUILD_DEPENDS+=		:jdk-1.4.2:devel/jdk/1.4
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
_MODJAVA_RUNDEP=	jdk-1.4.2|jre-1.4.2
.  else
_MODJAVA_RUNDEP=	jdk-1.4.2
.  endif
.  if ${MODJAVA_VER} == "1.4+"
RUN_DEPENDS+=	:${_MODJAVA_RUNDEP:S/-/->=/g}:devel/jdk/1.4
.  else
RUN_DEPENDS+=	:${_MODJAVA_RUNDEP}:devel/jdk/1.4
.  endif
.elif ${MODJAVA_VER:S/+//} == "1.5"
ONLY_FOR_ARCHS?=	i386
JAVA_HOME=		${LOCALBASE}/jdk-1.5.0
.  if ${NO_BUILD:L} != "yes"
BUILD_DEPENDS+=		:jdk-1.5.0:devel/jdk/1.5
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
_MODJAVA_RUNDEP=	jdk-1.5.0|jre-1.5.0
.  else
_MODJAVA_RUNDEP=	jdk-1.5.0
.  endif
.  if ${MODJAVA_VER} == "1.5+"
RUN_DEPENDS+=		:${_MODJAVA_RUNDEP:S/-/->=/g}:devel/jdk/1.5
.  else
RUN_DEPENDS+=		:${_MODJAVA_RUNDEP}:devel/jdk/1.5
.  endif
.else
ERRORS+="Fatal: MODJAVA_VER must be set to a valid value."
.endif
