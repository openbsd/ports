# Static linking with OpenSSL 3.2
.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY=		Yes
.endif

MODPY_EGG_VERSION =	2.0.0b8
REVISION =		1

# OpenSSL used for EVP_aes_256_ocb. It is linked statically to avoid conflicting
# with shared libcrypto from the base OS pulled in via dependencies.
BUILD_DEPENDS =		security/openssl/3.2
RUN_DEPENDS =		security/py-argon2-cffi${MODPY_FLAVOR} \
			sysutils/py-platformdirs${MODPY_FLAVOR}>=3.8.1

.include <bsd.port.mk>
