# DIST_TUPLE: basic form, 4 elements, doesn't move files after extraction
# Syntax:
# DIST_TUPLE +=	template account project id(commit/tag) # license
#
# Examples:
# DIST_TUPLE +=	github vim vim v9.0.1677 # VIM License / donation-ware
# DIST_TUPLE +=	gitlab Mr_Goldberg goldberg_emulator \
#		475342f0d8b2bd7eb0d93bd7cfdd61e3ae7cda24 # LGPLv3
DIST_TUPLE ?=

# DIST_TUPLE_MV: 5 elements, move files to targetdir after extraction
# Syntax:
# DIST_TUPLE_MV +=	template account project id(commit/tag) targetdir # license
#
# Example:
# DIST_TUPLE_MV +=	github FNA-XNA FNA.NetStub ebff244074bb3c28aeeb8cf7b383b5a029d7e28d \
#			../FNA.NetStub # Ms-PL
#
# Caveats:
# If DISTNAME isn't set and a tag is used for id, project-tag will be
# set as DISTNAME.
DIST_TUPLE_MV ?=

# needed to work with traditional MASTER_SITES + DISTNAME
.if defined(DISTNAME) && defined(MASTER_SITES)
DISTFILES ?= ${DISTNAME}${EXTRACT_SUFX}
.endif

.include "${PORTSDIR}/infrastructure/db/dist-tuple.pattern"

# DIST_TUPLE
.if !empty(DIST_TUPLE)
.  for _template _account _project _id in ${DIST_TUPLE}

.    if empty(MASTER_SITES.${_template})
ERRORS += "Fatal: invalid choice for DIST_TUPLE: ${_template}"
.    endif

.    if "${_template}" == "github"
_subdir =
_test_tagname = ${_id}
.      if ${_test_tagname} == "HASH" || ${_test_tagname:/^[0-9a-f]{40}$/HASH/} != "HASH"
# set DISTNAME if not done by the port and add refs/tags/ subdir
DISTNAME ?= ${_project}-${_id:S/^v//}
_subdir =	refs/tags/
.      endif
.    endif

DISTFILES.${_template} +=	${TEMPLATE_DISTFILES.${_template}:S/<account>/${_account}/g:S/<project>/${_project}/g:S/<id>/${_id}/g:S/<_subdir>/${_subdir}/g}
.    if !empty(TEMPLATE_HOMEPAGE.${_template})
HOMEPAGE ?=	${TEMPLATE_HOMEPAGE.${_template}:S/%account/${_account}/g:S/%project/${_project}/g}
.    endif

.  endfor
.endif

# DIST_TUPLE_MV (extended template with target directory)
.if !empty(DIST_TUPLE_MV)
.  for _template _account _project _id _targetdir in ${DIST_TUPLE_MV}

.    if empty(MASTER_SITES.${_template})
ERRORS += "Fatal: invalid choice for DIST_TUPLE_MV: ${_template}"
.    endif

# detect GitHub tagname format
.    if "${_template}" == "github"
_subdir =
_test_tagname = ${_id}
.      if ${_test_tagname}" == "HASH" || ${_test_tagname:C/^[0-9a-f]{40}$/HASH/} != "HASH"
# set DISTNAME if not done by the port and add refs/tags/ subdir
DISTNAME ?= ${_project}-${_id:S/^v//}
_subdir =	refs/tags/
.      endif
.    endif

DISTFILES.${_template} +=	${TEMPLATE_DISTFILES.${_template}:S/<account>/${_account}/g:S/<project>/${_project}/g:S/<id>/${_id}/g:S/<_subdir>/${_subdir}/g}
.    if !empty(TEMPLATE_HOMEPAGE.${_template})
HOMEPAGE ?=	${TEMPLATE_HOMEPAGE.${_template}:S/%account/${_account}/g:S/%project/${_project}/g}
.    endif

MODDIST-TUPLE_post-extract += \
        [[ -d ${WRKSRC}/${_targetdir} ]] && rmdir ${WRKSRC}/${_targetdir} \
                        || mkdir -p `dirname ${WRKSRC}/${_targetdir}` ; \
                                mv ${WRKDIR}/${_project}-${_id:S/refs\/tags\///:S/^v//} ${WRKSRC}/${_targetdir} ;

.  endfor
.endif
