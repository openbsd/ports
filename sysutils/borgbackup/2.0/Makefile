# Static linking with OpenSSL 3.5
.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY=		Yes
.endif

MODULES =		lang/python
MODPY_DISTV =		2.0.0b20
PKGNAME =		borgbackup-${MODPY_DISTV:S/b/beta/}
EPOCH =			0

# OpenSSL used for EVP_aes_256_ocb. It is linked statically to avoid conflicting
# with shared libcrypto from the base OS pulled in via dependencies.
BUILD_DEPENDS =		security/openssl/3.5
RUN_DEPENDS =		databases/py-borgstore>=0.3.0 \
			devel/py-borghash>=0.1.0 \
			security/py-argon2-cffi \
			sysutils/py-platformdirs \
			sysutils/py-shtab

MAKE_ENV =		BORG_OPENSSL_NAME=eopenssl35

.include <bsd.port.mk>
