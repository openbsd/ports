# DIST_TUPLE: 5 elements
# use targetdir=. if you don't want to move files after extraction
# Syntax:
# DIST_TUPLE +=	template account project id(commit/tag) targetdir # license
#
# Examples:
# DIST_TUPLE +=	github vim vim v9.0.1677 . # VIM License / donation-ware
# DIST_TUPLE +=	gitlab Mr_Goldberg goldberg_emulator \
#		475342f0d8b2bd7eb0d93bd7cfdd61e3ae7cda24 . # LGPLv3
# DIST_TUPLE +=	github FNA-XNA FNA.NetStub ebff244074bb3c28aeeb8cf7b383b5a029d7e28d \
#			../FNA.NetStub # Ms-PL
DIST_TUPLE ?=

# Caveats:
# If DISTNAME isn't set and a tag is used for id, project-tag will be
# set as DISTNAME.

.include "${PORTSDIR}/infrastructure/db/dist-tuple.pattern"

.if !empty(DIST_TUPLE)
.  for _template _account _project _id _targetdir in ${DIST_TUPLE}

.    if empty(SITES.${_template})
ERRORS += "Fatal: invalid choice for DIST_TUPLE: ${_template}"
.    endif

_subdir =
.    if "${_id}" == "HASH" || "${_id:C/^[0-9a-f]{10,40}$/HASH/}" != "HASH"
# set DISTNAME if not done by the port and add refs/tags/ subdir
DISTNAME ?= ${_project}-${_id:C/^(v|V|ver|[Rr]el|[Rr]elease)[-._]?([0-9])/\2/}
_subdir =	refs/tags/
_DT_WRKDIST ?= ${WRKDIR}/${_project}-${_id:C/^(v|V|ver|[Rr]el|[Rr]elease)[-._]?([0-9])/\2/}
.    else
_DT_WRKDIST ?= ${WRKDIR}/${_project:C,^.*/,,}-${_id}
.    endif

.    for _subst in S,<account>,${_account},g:S,<project>,${_project},g:S,<id>,${_id},g:S,<subdir>,${_subdir},g:S,<site>,${SITES.${_template}},g

DISTFILES.${_template} +=		${TEMPLATE_DISTFILES.${_template}:${_subst}}
EXTRACT_SUFX.${_template} ?=		${TEMPLATE_EXTRACT_SUFX}
TEMPLATE_HOMEPAGE.${_template} ?=	${TEMPLATE_HOMEPAGE}
HOMEPAGE ?=	${TEMPLATE_HOMEPAGE.${_template}:${_subst}}

.      if "${_targetdir}" != "."
MODDIST-TUPLE_post-extract += \
	t=${WRKDIST}/${_targetdir}; [[ -d $$t ]] && rmdir $$t \
	|| mkdir -p `dirname $$t` ; \
	mv ${WRKDIR}/${_project:T}-${_id:S/refs\/tags\///:S/^v//} $$t;
.      endif
.    endfor

.  endfor
.endif
